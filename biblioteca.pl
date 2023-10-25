:- dynamic libro/3.
% Base de datos de hechos de libros con título, autor y género

libro('Cien años de soledad', 'Gabriel Garcia Marquez', 'Novela').
libro('Crónica de una muerte anunciada', 'Gabriel Garcia Marquez', 'Novela').
libro('El amor en los tiempos del colera', 'Gabriel Garcia Marquez', 'Novela').
libro('El codigo Da Vinci', 'Dan Brown', 'Thriller').
libro('Angeles y demonios', 'Dan Brown', 'Thriller').
libro('El simbolo perdido', 'Dan Brown', 'Thriller').
libro('Dracula', 'Bram Stoker', 'Terror').
libro('El hobbit', 'J.R.R. Tolkien', 'Fantasia').
libro('El señor de los anillos: La comunidad del anillo', 'J.R.R. Tolkien', 'Fantasia').

% Reglas

% Función que añade libros a la biblioteca de forma dinámica
annadir_libro(Titulo, Autor, Genero) :-
    assertz(libro(Titulo, Autor, Genero)).

% Buscar libros por autor usando recursividad y listas
libros_por_autor(_, [], []).
libros_por_autor(Autor, [(Titulo, Autor)|RestoLibros], [Titulo|Resultados]) :-
    libros_por_autor(Autor, RestoLibros, Resultados).
libros_por_autor(Autor, [(_, _)|RestoLibros], Resultados) :-
    libros_por_autor(Autor, RestoLibros, Resultados).

% Función para obtener una lista de libros de un autor específico
buscar_por_autor(Autor, Resultados) :-
    findall((Titulo, Autor), libro(Titulo, Autor, _), ListaLibros),
    libros_por_autor(Autor, ListaLibros, Resultados).

% Buscar libros por género usando recursividad y listas
libros_por_genero(_, [], []).
libros_por_genero(Genero, [(Titulo, Genero)|RestoLibros], [Titulo|Resultados]) :-
    libros_por_genero(Genero, RestoLibros, Resultados).
libros_por_genero(Genero, [(_, _)|RestoLibros], Resultados) :-
    libros_por_genero(Genero, RestoLibros, Resultados).

% Función para obtener una lista de libros de un género específico
buscar_por_genero(Genero, Resultados) :-
    findall((Titulo, Genero), libro(Titulo, _, Genero), ListaLibros),
    libros_por_genero(Genero, ListaLibros, Resultados).





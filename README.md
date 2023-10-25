# Sistema de Biblioteca en Prolog

Este proyecto es un sistema simple que simula una biblioteca desarrollada en Prolog que permite gestionar libros por título, autor y género.

## Características

- Base de datos de libros con título, autor y género.
- Funcionalidad para añadir libros a la biblioteca de forma dinámica.
- Búsqueda de libros por autor.
- Búsqueda de libros por género.

## Uso

1. Carga el archivo `biblioteca.pl` en tu entorno Prolog.
2. Utiliza la función `añadir_libro(Titulo, Autor, Genero)` para añadir un nuevo libro a la biblioteca.
3. Utiliza la función `buscar_por_autor(Autor, Resultados)` para obtener una lista de libros de un autor específico.
4. Utiliza la función `buscar_por_genero(Genero, Resultados)` para obtener una lista de libros de un género específico.

## Ejemplo

```prolog
?- añadir_libro('Fahrenheit 451', 'Ray Bradbury', 'Ciencia Ficción').
?- buscar_por_autor('Ray Bradbury', Resultados).
Resultados = ['Fahrenheit 451'].

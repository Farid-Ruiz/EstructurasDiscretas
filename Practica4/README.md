# Práctica 04 - Estructuras Discretas (2027-I)

**Objetivo de la práctica:** 
Resolver los ejercicios armando funciones recursivas para las estructuras de datos que nos dieron (`Natural`, `Entero`, `Matrioska`). Básicamente, practicar recursión y pattern matching en Haskell.

**Tiempo requerido:** Aprox 3 horas.

**Ejercicio favorito:** 
El ejercicio 7 (aplana). Me latió porque está chido ver cómo se va desarmando la matrioska paso a paso y metiendo cada pieza en una lista.

### Respuestas a las preguntas del Ejercicio 8

**1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Como se manejan todos casos en cada implementación?**
En el archivo `enteros.hs` que nos pasaron, manejan todos los casos a mano usando pattern matching para cada combinación posible de `Suc` y `Neg`. En otras implementaciones (como pasar temporalmente la estructura a enteros normales de Haskell), dejas que el lenguaje haga la matemática directa en vez de ir armando y desarmando constructores.

**2. ¿Por qué se tiene implementada la operación `mayorEnt` en el archivo `enteros.hs`?**
Porque para restar dos números positivos usando puros "Sucesores", a fuerza necesitas saber cuál es el más grande. Si al número chico le restas el grande, el resultado tiene que cambiar a los negativos (`Neg`), así que la función necesita revisar quién es mayor para saber cuándo cruzar el cero.

**3. Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu respuesta.**
Me quedo con la de convertir la estructura a `Int`. El código del `enteros.hs` está bien para entender la teoría, pero escribir cada caso a mano es súper largo y es muy fácil equivocarte. Aparte, si luego nos piden hacer multiplicación o división con puros Sucesores, el código se volvería gigante y muy difícil de leer.

Preguntas:

1. ¿Cuáles son las principales diferencias entre Haskell y Rust?

segun Jay Zelenskyi del cual ya no pude encontrar mas infotmacion asi que tomo su iinformacion con pinzas, nos dice entre tanto lenguaje tecnico que apenas comprendi y con lo que me quedo para hacer esta investigacion son los sigueinetes tres puntos:

Enfoque y control:

Haskell es un lenguaje principalmente funcional puro, diseñado para razonar sobre problemas lógicos de manera matemática. Rust es un lenguaje de sistemas, diseñado para tener un control total sobre el hardware y la memoria sin perder seguridad (Zelenskyi, 2023).

Gestión de memoria:

Haskell delega la limpieza de la memoria a un recolector de basura (garbage collector) automático. Rust no utiliza recolector de basura; en su lugar, gestiona la memoria en tiempo de compilación mediante un sistema de propiedad y préstamos (ownership/borrowing) (Zelenskyi, 2023).

Evaluación de datos:

Haskell usa evaluación perezosa (lazy evaluation), calculando las expresiones solo cuando son estrictamente necesarias. Rust evalúa de forma imprevista/inmediata (eager evaluation), ejecutando las operaciones al instante (Zelenskyi, 2023).

2. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

Como tal no encontre una respuesta concreta a esta pregunta, al menos no en paginas formales debido que lo principal que encontraba era en Reddit o otros fotos de internet donde principalmente son opiniones entonces me quede con Applenews aunque me estrese con el formato tan sucio que tiene, lleno de grano a lo que dice la pagina que esta algo desactualizada  pues estas notas son de 2018 creoque puede servir pues no encontre otra informacion formal de mi agrado.

Diferencia con las necesidades comunes: La mayoría del software comercial se basa en modificar datos continuamente e interactuar con el usuario. Haskell promueve la inmutabilidad (datos que no cambian) y la pureza, lo cual resulta menos intuitivo y más complejo para la mayoría de los desarrollos cotidianos (Jeske, 2018).

Falta de polimorfismo dinámico directo: Patrones de diseño esenciales para construir interfaces de usuario o marcos de trabajo masivos son más difíciles de estructurar en Haskell comparado con otros lenguajes populares (Jeske, 2018).

Compatibilidad e integración: Generar bibliotecas ejecutables de forma compartida y mantener compatibilidad binaria entre actualizaciones (late-binding) es un reto técnico en Haskell, lo que dificulta su adopción en grandes entornos industriales (Jeske, 2018).

3. Si tuvieras que explicarle a una persona que no es de CC la función que cumple Git frente a la de GitHub, ¿cómo se lo explicarías?

Me tomare la libertad creativa de no citar aqui pues me gustaria explicarlo segun lo que hemos visto con Leo y con Irvin:

Git: Aqui es donde puedes guardar las versionbes de tu codigo desde el inicio hasta el final, permitiendo que puedas tener copias de seguridad y observar tu progreso, tambien 3ncuentro utilidad en git para rescatar versiones viejas con buenas funciones y implementarlas en versiones nuevas de menera mas facil.

GitHub: Es como un Google Drive, desde aqui te permiten trabjar en casi cualquier despositivo conectado a internet, lo que termite trabajar aun estando en otro dispositivos.



Peresadin, I. (2019, 26 de julio). Haskell: A functional love story. Serokell. https://serokell.io/blog/haskell-love-story

Zelenskyi, J. (2023, 14 de febrero). Rust vs. Haskell. Serokell. https://serokell.io/blog/rust-vs-haskell
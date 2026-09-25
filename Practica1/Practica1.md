Preguntas:

1. ¿Cuáles son las principales diferencias entre Haskell y Rust?

Según Jay Zelenskyi, del cual ya no pude encontrar más información, así que tomo su información con pinzas, nos dice, entre tanto lenguaje técnico que apenas comprendí, y con lo que me quedo para hacer esta investigación, los siguientes tres puntos:

Enfoque y control:

Haskell es un lenguaje principalmente funcional puro, diseñado para razonar sobre problemas lógicos de manera matemática. Rust es un lenguaje de sistemas, diseñado para tener un control total sobre el hardware y la memoria sin perder seguridad (Zelenskyi, 2023).

Gestión de memoria:

Haskell delega la limpieza de la memoria a un recolector de basura (garbage collector) automático. Rust no utiliza recolector de basura; en su lugar, gestiona la memoria en tiempo de compilación mediante un sistema de propiedad y préstamos (ownership/borrowing) (Zelenskyi, 2023).

Evaluación de datos:

Haskell usa evaluación perezosa (lazy evaluation), calculando las expresiones solo cuando son estrictamente necesarias. Rust evalúa de forma inmediata (eager evaluation), ejecutando las operaciones al instante (Zelenskyi, 2023).

2. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

Como tal, no encontré una respuesta concreta a esta pregunta, al menos no en páginas formales, debido a que lo principal que encontraba era en Reddit u otros foros de internet, donde principalmente son opiniones. Entonces, me quedé con Apple News, aunque me estresé con el formato tan sucio que tiene, lleno de grano. A lo que dice la página, que está algo desactualizada, pues estas notas son de 2018, creo que puede servir, ya que no encontré otra información formal de mi agrado.

Diferencia con las necesidades comunes:

La mayoría del software comercial se basa en modificar datos continuamente e interactuar con el usuario. Haskell promueve la inmutabilidad (datos que no cambian) y la pureza, lo cual resulta menos intuitivo y más complejo para la mayoría de los desarrollos cotidianos (Jeske, 2018).

Falta de polimorfismo dinámico directo:

Patrones de diseño esenciales para construir interfaces de usuario o marcos de trabajo masivos son más difíciles de estructurar en Haskell comparado con otros lenguajes populares (Jeske, 2018).

Compatibilidad e integración:

Generar bibliotecas ejecutables de forma compartida y mantener compatibilidad binaria entre actualizaciones (late-binding) es un reto técnico en Haskell, lo que dificulta su adopción en grandes entornos industriales (Jeske, 2018).

3. Si tuvieras que explicarle a una persona que no es de CC la función que cumple Git frente a la de GitHub, ¿cómo se lo explicarías?

Me tomaré la libertad creativa de no citar aquí, pues me gustaría explicarlo según lo que hemos visto con Leo y con Irvin:

Git:

Aquí es donde puedes guardar las versiones de tu código desde el inicio hasta el final, permitiendo que puedas tener copias de seguridad y observar tu progreso. También encuentro utilidad en Git para rescatar versiones viejas con buenas funciones e implementarlas en versiones nuevas de manera más fácil.

GitHub:

Es como un Google Drive. Desde aquí te permiten trabajar en casi cualquier dispositivo conectado a internet, lo que permite trabajar aun estando en otro dispositivo.

Referencias:

Peresadin, I. (2019, 26 de julio). Haskell: A functional love story. Serokell. https://serokell.io/blog/haskell-love-story

Zelenskyi, J. (2023, 14 de febrero). Rust vs. Haskell. Serokell. https://serokell.io/blog/rust-vs-haskel
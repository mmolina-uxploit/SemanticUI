# SemanticUI
### Case Study: Visual Tokens & Domain-Independent Design

Investigación sobre la implementación de Design Systems en SwiftUI mediante el uso de tokens semánticos. El objetivo es separar la identidad visual de la implementación técnica de los componentes.

**Engineering Thesis:**
El diseño debe ser un lenguaje, no una lista de constantes. Este sistema traduce decisiones estéticas en tokens reutilizables que permiten cambios de marca (rebranding) o modos visuales (Dark/Light) con cambios mínimos de código.

**Core Objectives:**
* **Semantic Abstraction:** Uso de nombres basados en propósito (ej. `actionPrimary`) en lugar de valores directos (ej. `blue`).
* **UI Independence:** Componentes que no dependen de la lógica de negocio, funcionando como una librería de UI pura.
* **Atomic Design:** Construcción jerárquica desde tokens básicos hasta organismos complejos.

**Key Decision (ADR):**
* **Decision:** Estilo centralizado vía EnvironmentKeys.
* **Why:** Facilita la propagación de estilos en SwiftUI sin necesidad de pasar parámetros manualmente por toda la jerarquía de vistas.
* **Trade-off:** Requiere una configuración inicial rigurosa para asegurar que el sistema sea coherente en toda la aplicación.

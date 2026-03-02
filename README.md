# Sistema de Diseño Semántico (SemanticUI)

Este proyecto implementa una arquitectura de diseño de producto donde la interfaz de usuario se trata como un **lenguaje de comunicación técnica**, priorizando la predictibilidad y la reducción de carga cognitiva sobre el efectismo visual.

---

## Project Overview
**Problema:** Fragmentación visual y pérdida de coherencia semántica en sistemas mobile que escalan.  
**Solución:** Un sistema de diseño que separa la **intención** de la **representación** mediante tokens semánticos y contratos de UI verificables mediante TDD.

---

## Engineering Goals
* **Reducción de Carga Cognitiva:** Interfaces basadas en modelos mentales predecibles.
* **Invariancia Semántica:** Garantía de que cada símbolo mantiene su significado en todo el sistema.
* **Gobernanza del Cambio:** Centralización de decisiones para evitar degradación técnica.
* **Accesibilidad Estructural:** Integración de Dynamic Type como propiedad de base.

---

## Architecture
El sistema organiza la UI según su función y estabilidad:

1.  **Tokens (Foundations):** Define el significado (ej. `actionPrimary`) sin depender de valores físicos.
2.  **Components:** Unidades de significado que encapsulan estados y ergonomía digital.
3.  **Tests:** Documentación ejecutable que garantiza la integridad de los contratos de diseño.

---

## Architectural Decisions (ADR-lite)

| Decision | Context | Why | Tradeoffs |
| :--- | :--- | :--- | :--- |
| **Tokens Semánticos** | Evitar uso de colores arbitrarios. | Facilita cambios globales sin tocar la lógica de vista. | Mayor verbosidad inicial. |
| **TDD para UI** | Riesgo de placeholders en producción. | Los tests actúan como documentación ejecutable. | Requiere disciplina de ingeniería superior. |

---

## Technology Stack
* **Swift / SwiftUI:** Framework declarativo para estados deterministas.
* **XCTest:** Motor de validación de contratos semánticos.

---

## Execution
1.  **Xcode:** Abrir `SemanticUI.xcodeproj`.
2.  **Tests:** Ejecutar mediante `Cmd + U`.
3.  **Nota de Evaluación:** El test `test_semanticColors_areNotPlaceholders` fallará inicialmente (**Ciclo Red**). Para pasarlo, sustituir los placeholders en `SemanticTokens.swift`.

---

## Engineering Tradeoffs & Limitations
* **Rigidez vs. Flexibilidad:** El sistema sacrifica la flexibilidad local para garantizar consistencia global.
* **Curva de Aprendizaje:** Requiere pensar en semántica arquitectónica, no en estética.

---


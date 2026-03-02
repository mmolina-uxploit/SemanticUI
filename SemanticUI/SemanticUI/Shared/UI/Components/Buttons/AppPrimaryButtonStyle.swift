
import SwiftUI

// Contrato de Componente: Botón Primario
// Este estilo encapsula la *semántica* de una acción principal, garantizando consistencia visual y de accesibilidad en toda la app.

public struct AppPrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline) // Soporte para Dynamic Type
            .padding()
            .frame(maxWidth: .infinity, minHeight: 44) // Área táctil mínima de 44pt y se expande
            .background(backgroundColor(configuration: configuration))
            .foregroundColor(foregroundColor(configuration: configuration))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }

    private func backgroundColor(configuration: Configuration) -> Color {
        if !isEnabled {
            return SemanticColors.actionPrimary.opacity(0.4)
        }
        return configuration.isPressed ? SemanticColors.actionPrimary.opacity(0.8) : SemanticColors.actionPrimary
    }

    private func foregroundColor(configuration: Configuration) -> Color {
        // Para alto contraste, un color estático (blanco o negro) suele ser mejor
        // que uno semántico que podría cambiar. Asumimos blanco para un fondo azul.
        // Si `actionPrimary` fuera claro, la lógica debería cambiar.
        return .white
    }
}

extension Button {
    func appPrimaryButtonStyle() -> some View {
        self.buttonStyle(AppPrimaryButtonStyle())
    }
}

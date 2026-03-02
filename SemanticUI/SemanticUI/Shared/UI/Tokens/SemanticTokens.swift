import SwiftUI

// Estos tokens semánticos definen el *rol* de un color en la UI.
// Cada valor aquí es una decisión explícita del sistema.

public struct SemanticColors {

    // Acción primaria del sistema.
    public static var actionPrimary: Color {
        Color(red: 37 / 255, green: 99 / 255, blue: 235 / 255) // #2563EB
    }

    // Superficie base sobre la que vive la UI.
    public static var surfaceBase: Color {
        #if os(iOS)
        return Color(
            UIColor { traitCollection in
                traitCollection.userInterfaceStyle == .dark
                ? UIColor(red: 15 / 255, green: 15 / 255, blue: 17 / 255, alpha: 1)   // #0F0F11
                : UIColor(red: 1, green: 1, blue: 1, alpha: 1)                       // #FFFFFF
            }
        )
        #else
        return Color.white
        #endif
    }

    // Texto de máxima jerarquía semántica.
    // Debe garantizar legibilidad y contraste.
    public static var textHighEmphasis: Color {
        #if os(iOS)
        return Color(
            UIColor { traitCollection in
                traitCollection.userInterfaceStyle == .dark
                ? UIColor(red: 245 / 255, green: 245 / 255, blue: 247 / 255, alpha: 1) // #F5F5F7
                : UIColor(red: 17 / 255, green: 17 / 255, blue: 19 / 255, alpha: 1)    // #111113
            }
        )
        #else
        return Color.black
        #endif
    }
}

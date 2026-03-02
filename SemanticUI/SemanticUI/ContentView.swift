//
//  ContentView.swift
//  SemanticUI
//
//  Created by m47145 on 26/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 32) {
            
            Text("Sistema de Diseño Cognitivo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundStyle(SemanticColors.textHighEmphasis)

            VStack(alignment: .leading, spacing: 16) {
                Text("Este botón utiliza el contrato `AppPrimaryButtonStyle`:")
                    .font(.subheadline)
                    .foregroundStyle(SemanticColors.textHighEmphasis.opacity(0.8))
                
                Button(action: {
                    print("Primary action button tapped.")
                }) {
                    Text("Acción Principal")
                        .frame(maxWidth: .infinity)
                }
                .appPrimaryButtonStyle()
            }
            Spacer()
        }
        .padding(32)
        .background(SemanticColors.surfaceBase)
    }
}

/// Provides a preview of the `ContentView` for Xcode's canvas.
#Preview {
    ContentView()
}

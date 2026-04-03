// HomeView.swift
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("TraTo")
                .font(.largeTitle)
                .bold()
            Text("Willkommen!")
                .foregroundStyle(.secondary)
        }
    }
}

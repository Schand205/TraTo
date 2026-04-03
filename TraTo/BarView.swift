import SwiftUI

struct BarView: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack(alignment: .bottom) {
            // Inhalt füllt den ganzen Screen
            Group {
                switch selectedTab {
                case 0: HomeView()
                case 1: OverView()
                case 2: OverView()
                case 3: OverView()
                default: HomeView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            // TabBar liegt drüber
            LiquidTabBar(selectedTab: $selectedTab)
                .padding(.bottom, 34)  // 34 = Höhe des Home Indicators
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct LiquidTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack(spacing: 0) {
                    TabBarButton(icon: "house.fill", label: "Home", index: 0, selectedTab: $selectedTab)
                    TabBarButton(icon: "magnifyingglass", label: "Suche", index: 1, selectedTab: $selectedTab)
                    TabBarButton(icon: "person.2", label: "Reisen", index: 2, selectedTab: $selectedTab)
                    TabBarButton(icon: "person", label: "Profil", index: 3, selectedTab: $selectedTab)
                }
        .padding(.vertical, 12)
        .padding(.horizontal, 8)
        .background(.ultraThinMaterial)        // ← Liquid Glass Effekt
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(.white.opacity(0.3), lineWidth: 0.5)
        )
        .padding(.horizontal, 24)
    }
}

struct TabBarButton: View {
    let icon: String
    let label: String
    let index: Int
    @Binding var selectedTab: Int

    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 20))
            Text(label)
                .font(.system(size: 10))
        }
        .frame(maxWidth: .infinity)
        .foregroundStyle(selectedTab == index ? .blue : .primary)  // ← aktiver Tab blau
        .onTapGesture {
            selectedTab = index   // ← Tab wechseln
        }
    }
}

#Preview {
    BarView()
}

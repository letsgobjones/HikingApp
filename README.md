# SwiftUI Hiking App 🥾

This project showcases my growing expertise in SwiftUI for building iOS applications. It features a list of hikes with navigation to detailed views, incorporating various SwiftUI techniques:

## Key Features ✨

* **Navigation:**
    * Uses `NavigationStack` and `NavigationLink` for seamless transitions between views.
    * Employs value-based navigation for passing data efficiently.
* **Data Modeling:**
    * Creates `Hike` structs that conform to `Identifiable` and `Hashable` for use in lists and navigation.
* **Custom Views:**
    * Builds reusable `HikeCellView` and `HikeDetailView` components to modularize UI code.
* **Styling & Layout:**
    * Employs `HStack` and `VStack` for flexible layout arrangements.
    * Loads, resizes, and styles images using built-in SwiftUI modifiers.
    * Uses `Spacer` for precise layout adjustments.
* **Animations & Gestures:**
    * Implements an `onTapGesture` to trigger an animation on the detail view's image.
    * Smoothly transitions between image aspect ratios using `withAnimation`.
* **Navigation Bar Customization:**
    * Sets navigation bar titles and styles for a consistent look and feel.

## Code Snippets 📝

**HikeListView:**

```swift
HStack (alignment: .top) {
    Image(hike.photo) // ... image styling 
    VStack(alignment: .leading) { // ... text views 
    }
}


**HikeDetailView:**

```swift
Image(hike.photo) // ...
    .onTapGesture {
        withAnimation {
            zoomed.toggle()
        }
    }}

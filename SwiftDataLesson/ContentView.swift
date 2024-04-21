import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var name = ""
    @State private var surname = ""
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
                .frame(width: 300,  height: 50)
                .border(Color.black, width: 1)
            TextField("Surname", text: $surname)
                .padding()
                .frame(width: 300,  height: 50)
                .border(Color.black, width: 1)
            Button(action: { addItem(self.name, self.surname) }) {
                Text("Add")
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 20))
            }
            List(items) { item in
                HStack {
                    Text(item.name)
                    Text(item.surname)
                    Button(action: {
                        deleteItem(item: item)
                    }) {
                        Image(systemName: "trash")
                    }
                }
            }
        }
    }
    
    private func addItem(_ name: String, _ surname: String) {
       context.insert(DataItem(name: name, surname: surname))
    }
    private func deleteItem(item: DataItem) {
        context.delete(item)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

<h1 align="center"">1. Step --- Model (Создаем схему данных) --- </h1>

  <img width="757" alt="Снимок экрана 2024-04-21 в 19 53 28" src="https://github.com/vladyahnovec/SwiftDataLesson/assets/153903831/f9ac930f-177d-40fe-9cad-e7e60c4afab7">
    
   @Attribute(.unique) var name - гарантрирует уникальность значения поля
   
   @Attribute(.allowsCloudEncryption) var name - сохраняет значение поля в зашифрованном виде 
   
   @Attribute(.ephemeral) var name - отслеживать изменение этого свойства, но не сохранять их 
   
   @Attribute(.preserveValueOnDeletion) var name - ?
   
   @Attribute(.spotlight) var name - ?
   
   @Attribute(.transformable(by: )) var name - ?

   @Relationship(.cascade) var cars: [Car] - при удалении, связанные сущности тоже удаляются 

   @Transient var accommodation: Accommodation - свойство не будет сохраняться в базу

<h1 align="center"">2. Step --- ModelContainer (Конфигурация хранилища) --- </h1>

  ModelContainer - посредник между схемой данных и хранилищем
  
<img width="748" alt="Снимок экрана 2024-04-21 в 19 58 25" src="https://github.com/vladyahnovec/SwiftDataLesson/assets/153903831/0f267719-ec12-410f-ab93-19193933bc74">

<h1 align="center"">3. Step --- modelContext --- </h1>
   
   modelContext - для создания, изменения или удаления данных в SwiftData нужен ModelContext.
   
   Это сущность, которая хранит в памяти модель данных, наблюдает за всеми сделанными изменениями, а также занимается сохранением данных.
   
   Макрос @Query - получение данных из хранилища. Данные можно отсортировать или отфильтровать:
   
   @Query(sort: \items.name) var items: [DataItem]
   
   @Query(filter: #Predicate<Item> { $0.name == "name" }, sort: \items.surname) var items: [DataItem]

   <img width="732" alt="Снимок экрана 2024-04-21 в 20 03 14" src="https://github.com/vladyahnovec/SwiftDataLesson/assets/153903831/ec900331-9d29-4599-86d9-7141e04474aa">

<h1 align="center"">4. Step --- Методы --- </h1>

  Добавление 
  
<img width="490" alt="Снимок экрана 2024-04-21 в 20 07 08" src="https://github.com/vladyahnovec/SwiftDataLesson/assets/153903831/f6fe4984-29b7-4776-8068-0c3ab9c691fa">

  Удаление 
  
<img width="313" alt="Снимок экрана 2024-04-21 в 20 15 16" src="https://github.com/vladyahnovec/SwiftDataLesson/assets/153903831/6daf0de2-4807-4c9a-b979-639a503a6364">

  Редактирование
  
  <img width="327" alt="Снимок экрана 2024-04-21 в 20 15 41" src="https://github.com/vladyahnovec/SwiftDataLesson/assets/153903831/a3cee8c4-b5cf-4fbc-8432-79d6dbae921f">

  

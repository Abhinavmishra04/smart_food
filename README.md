# Smart Food Delivery Route Optimizer
## An Intelligent Route Planning System Using Graphs, Dijkstra's Algorithm, A* Search, Priority Queue, and File Handling

**Coursework:** B.Tech Computer Science and Engineering  
**Skill-Development Course:** Master Data Structures & Algorithms: Build, Optimize, and Solve  
**Institution:** Lovely Professional University (LPU)  

---

### Project Structure
```
SmartFoodDelivery/
├── CMakeLists.txt              # CMake build configuration for VSCode / MinGW
├── Makefile                    # Standard Makefile for GCC compilation
├── README.md                   # Setup, build, and execution instructions
├── PROJECT_REPORT.md           # Full university project report & viva questions
├── include/
│   └── Graph.h                 # Graph, LocationNode, and Edge structures
├── src/
│   ├── Graph.cpp               # Adjacency List graph implementation
│   ├── Dijkstra.cpp            # Dijkstra's algorithm using Binary Min-Heap
│   ├── AStar.cpp               # A* Search with Euclidean distance heuristic
│   ├── Billing.cpp             # Delivery fees and ETA calculation formulas
│   ├── FileManager.cpp         # Text file reader and writer
│   └── main.cpp                # Main CLI interactive test runner
└── data/
    ├── locations.txt           # Vertices (intersections, restaurants, hostels)
    ├── roads.txt               # Edges (distance in km, names, bidirectional)
    ├── restaurants.txt         # Campus food outlets
    ├── menu.txt                # Dishes and prices
    ├── users.txt               # Registered users and hashed passwords
    └── orders.txt              # Saved order records
```

---

### Quick Compilation & Execution (Windows / Linux / VS Code)

#### Option 1: Using GCC / MinGW Directly
```bash
cd SmartFoodDelivery
g++ -std=c++17 -Iinclude src/main.cpp src/Graph.cpp src/Dijkstra.cpp src/AStar.cpp src/Billing.cpp src/FileManager.cpp -o SmartRoute
./SmartRoute
```

#### Option 2: Using Makefile
```bash
cd SmartFoodDelivery
make
make run
```

#### Option 3: Using CMake
```bash
cd SmartFoodDelivery
mkdir build && cd build
cmake ..
cmake --build .
./SmartRoute
```

---

### Key DSA Concepts Implemented
1. **Adjacency List (`std::unordered_map<int, std::vector<Edge>>`):**  
   Represents sparse planar road networks in $O(V + E)$ memory instead of wasting $O(V^2)$ in an adjacency matrix.
2. **Dijkstra's Algorithm:**  
   Finds the single-source shortest path using a Min-Priority Queue (`std::priority_queue` with `std::greater`). Runs in $O((V + E) \log V)$ time.
3. **A* Search Algorithm ($f(n) = g(n) + h(n)$):**  
   Guided heuristic search using Euclidean distance $\sqrt{(x_1-x_2)^2 + (y_1-y_2)^2}$. Because straight lines never overestimate true road distance, the heuristic is admissible and monotonic, guaranteeing an optimal shortest path while reducing node expansions by up to 50%.
4. **File Handling:**  
   Persists all data in pipe-delimited text records inside the `data/` folder, ensuring durability across restarts without external database dependencies.

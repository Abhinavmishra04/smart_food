cmake_minimum_required(VERSION 3.15)
project(SmartFoodDeliveryRouteOptimizer CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(include)

add_executable(SmartRoute
    src/main.cpp
    src/Graph.cpp
    src/Dijkstra.cpp
    src/AStar.cpp
    src/Billing.cpp
    src/FileManager.cpp
)

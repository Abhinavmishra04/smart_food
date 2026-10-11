CXX = g++
CXXFLAGS = -std=c++17 -Wall -Iinclude

SRCS = src/main.cpp src/Graph.cpp src/Dijkstra.cpp src/AStar.cpp src/Billing.cpp src/FileManager.cpp
TARGET = SmartRoute

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

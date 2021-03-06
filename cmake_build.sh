#!/bin/bash

if [ -d build ]; then
	rm -rf build
fi
mkdir build
cd build

cmake ..

cmake --build .
cd ..

# python
cp ./compiled/libBoardController.so ./python-package/brainflow/lib/libBoardController.so
# cpp
cp ./compiled/libBoardController.so ./cpp-package/lib/libBoardController.so
cp ./src/board_controller/inc/board_controller.h  ./cpp-package/inc/board_controller.h
# matlab
cp ./compiled/libBoardController.so ./matlab-package/brainflow/lib/libBoardController.so
cp ./src/board_controller/inc/board_controller.h  ./matlab-package/brainflow/inc/board_controller.h
# java
cp ./compiled/libBoardController.so ./java-package/brainflow/src/main/resources/libBoardController.so
# data
cp ./compiled/libBoardController.so ./data/lib/libBoardController.so
cp ./src/board_controller/inc/board_controller.h  ./data/inc/board_controller.h
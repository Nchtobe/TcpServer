cmake_minimum_required(VERSION 2.5)
project(myHttpServer)

add_compile_options(-std=c++11)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

set(CMAK_CXX_FLAGS "${CMAK_CXX_FLAGS} -g")

aux_source_directory(. SRC_LIST)

add_library(myHttpServer SHARED ${SRC_LIST})

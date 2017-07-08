# Install script for directory: /mnt/hdd1/BAM_IO/lib/bamtools/src/api

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bamtools/libbamtools.so.2.4.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bamtools/libbamtools.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bamtools" TYPE SHARED_LIBRARY FILES
    "/mnt/hdd1/BAM_IO/lib/bamtools/lib/libbamtools.so.2.4.1"
    "/mnt/hdd1/BAM_IO/lib/bamtools/lib/libbamtools.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bamtools/libbamtools.so.2.4.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bamtools/libbamtools.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bamtools" TYPE STATIC_LIBRARY FILES "/mnt/hdd1/BAM_IO/lib/bamtools/lib/libbamtools.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/api_global.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamAlgorithms.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamAlignment.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamAux.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamConstants.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamIndex.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamMultiReader.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamReader.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/BamWriter.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/IBamIODevice.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamConstants.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamHeader.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamProgram.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamProgramChain.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamReadGroup.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamReadGroupDictionary.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamSequence.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/SamSequenceDictionary.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bamtools/api/algorithms" TYPE FILE FILES "/mnt/hdd1/BAM_IO/lib/bamtools/src/api/algorithms/Sort.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/hdd1/BAM_IO/lib/bamtools/build/src/api/internal/cmake_install.cmake")

endif()


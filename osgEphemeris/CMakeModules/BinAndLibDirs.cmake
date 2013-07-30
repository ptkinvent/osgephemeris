if(CMAKE_COMPILER_IS_GNUCXX)
    include(GNUInstallDirs)
endif(CMAKE_COMPILER_IS_GNUCXX)

if(NOT DEFINED CMAKE_INSTALL_LIBDIR)
  set(CMAKE_INSTALL_LIBDIR lib)
endif(NOT DEFINED CMAKE_INSTALL_LIBDIR)

set(_INSTALL_INCDIR include)
set(_INSTALL_BINDIR bin)
set(_INSTALL_ARCHIVEDIR ${CMAKE_INSTALL_LIBDIR})
if(WIN32)
    SET(_INSTALL_LIBDIR bin)
else(WIN32)
    SET(_INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR})
endif(WIN32)

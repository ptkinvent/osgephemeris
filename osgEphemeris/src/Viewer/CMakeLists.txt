set( HEADER_PATH ${CMAKE_SOURCE_DIR}/include/osgEphemeris )

set( osgEphemerisViewer_LIBS osgEphemeris )

#find_package(OpenSceneGraph 2.0.0 REQUIRED osgDB osgUtil osgText osgViewer osgGA)
include( FindOSGHelper )

include_directories(
        ${CMAKE_SOURCE_DIR}/include
        ${OSG_INCLUDE_DIRS}
    )

SET(TARGET_SRC
    main.cpp
    Compass.cpp
    Compass.h
	)


SET(TARGET_NAME osgEphemerisViewer)
ADD_EXECUTABLE(${TARGET_NAME} ${TARGET_SRC} )
TARGET_LINK_LIBRARIES(${TARGET_NAME} ${osgEphemerisViewer_LIBS} ${OPENSCENEGRAPH_LIBRARIES} )


SET(INSTALL_INCDIR include)
SET(INSTALL_BINDIR bin)
IF(WIN32)
    SET(INSTALL_LIBDIR bin)
    SET(INSTALL_ARCHIVEDIR lib)
ELSE()
    SET(INSTALL_LIBDIR lib${LIB_POSTFIX})
    SET(INSTALL_ARCHIVEDIR lib${LIB_POSTFIX})
ENDIF()


INSTALL(
    TARGETS ${TARGET_NAME}
    RUNTIME DESTINATION ${INSTALL_BINDIR}
    LIBRARY DESTINATION ${INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${INSTALL_ARCHIVEDIR}
)

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecateAPIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecatebefore Qt 6.0.0

SOURCES += \
#    btosg.cpp \
    followupdater.cpp \
    gameworld.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    OsgQtWidget.h \
#    btosg.h \
#    btosgHUD.h \
#    btosgVehicle.h \
    followupdater.h \
    gameworld.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

#win32: INCLUDEPATH += C:/Users/morvy/OneDrive/Documentos/GitHub/vcpkg/installed/x64-windows/include
#win32: INCLUDEPATH += C:/Users/morvy/OneDrive/Documentos/GitHub/vcpkg/installed/x64-windows/include/bullet

#win32: LIBS += -L"C:/Users/morvy/OneDrive/Documentos/GitHub/vcpkg/installed/x64-windows/lib" \
#                    -losg -losgGA -losgAnimation -losgDB -losgViewer -losgWidget -losgUtil -losgSim -losgUI -losgShadow -losgSim -lOpenThreads \
#                    -losgManipulator -losgFX -losgPresentation \
#                    -lBulletCollision  -lLinearMath -lBulletDynamics \
#                    -lBulletInverseDynamics -lBulletSoftBody \
#                    -lBullet3Geometry -lBullet3Collision -lBullet3Dynamics \
#                    -lBullet2FileLoader -lBulletInverseDynamicsUtils \
#                    -lBulletWorldImporter

win32 {

INCLUDEPATH += C:/Users/morvy/OneDrive/Documentos/GitHub/vcpkg/installed/x64-windows/include

LIBS += -L"C:/Users/morvy/OneDrive/Documentos/GitHub/vcpkg/installed/x64-windows/lib" \
            -losg -losgGA -losgAnimation -losgDB -losgViewer -losgWidget -lOpenThreads \
            -losgUtil -losgSim -losgUI -losgShadow -losgSim -losgText\
            -losgManipulator  -losgFX -losgPresentation

#C:\Users\morvy\OneDrive\Documentos\GitHub\bullet3\build7\lib\Release

INCLUDEPATH += E:/osgWorks/include
LIBS += -L"C:/Users/morvy/OneDrive/Documentos/GitHub/bullet3/build7/lib/Release" \
            -losgwControls -losgwMx -losgwQuery -losgwTools

INCLUDEPATH += E:/osgBullet/include
LIBS += -L"E:/osgBullet/lib" \
            -losgbCollision -losgbDynamics -osgbInteraction

INCLUDEPATH += E:/osgWorks/include
LIBS += -L"E:/osgWorks/lib" \
            -lBulletCollision  -lLinearMath -lBulletDynamics \
            -lBulletInverseDynamics -lBulletSoftBody \
            -lBullet3Geometry -lBullet3Collision -lBullet3Dynamics \
            -lBullet2FileLoader -lBulletInverseDynamicsUtils \
            -lBulletWorldImporter
}


unix: {

INCLUDEPATH += /usr/local/include
INCLUDEPATH += /usr/local/include/BulletDynamics
INCLUDEPATH += /usr/local/include/bullet
}

unix: LIBS += -L"/usr/local/lib" -losg -losgGA -losgAnimation -losgDB -losgViewer -losgWidget -losgUtil -losgSim -losgUI -losgShadow -losgSim \
                    -losgManipulator  -losgFX -losgPresentation -lBulletCollision -lBulletDynamics -lLinearMath -lBulletSoftBody -lBulletInverseDynamics \
                    -lBullet3Common -lBullet3Geometry -lBullet3Collision -lBullet3Dynamics -lBullet2FileLoader -lBulletInverseDynamicsUtils -lBulletWorldImporter


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#building bullet
#if not exist build (
#        mkdir build
#)
#cmake -S . -B ./build -A x64 -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DINSTALL_LIBS=ON -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DINSTALL_EXTRA_LIBS=ON-DUSE_DOUBLE_PRECISION=ON -DBUILD_EXTRAS=ON -DBUILD_CPU_DEMOS=OFF -DBUILD_OPENGL3_DEMOS=OFF -DBUILD_UNIT_TESTS=OFF -DBUILD_BULLET2_DEMOS=OFF
#cmake --build ./build --config Release
#cmake --install ./build


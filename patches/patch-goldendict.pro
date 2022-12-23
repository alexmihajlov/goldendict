--- goldendict.pro.orig	Mon Jun 14 22:57:34 2021
+++ goldendict.pro	Mon Jun 14 22:59:11 2021
@@ -141,6 +141,7 @@
   # This is to keep symbols for backtraces
   QMAKE_CXXFLAGS += -rdynamic
   QMAKE_LFLAGS += -rdynamic
+  LIBS += -liconv -lexecinfo
 
     greaterThan(QT_MAJOR_VERSION, 4) {
       greaterThan(QT_MINOR_VERSION, 0) {

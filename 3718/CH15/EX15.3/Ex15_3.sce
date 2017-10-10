//Chapter 15: Environmental Pollution and Control
//Problem: 2
clc;

//Declaration of Variables
v0 = 25      // ml, sewage
d0 = 410   // ppm, dissolved oxygen
d1 = 120   // ppm, dissolved oxygen
v1 = 50      // ml, sewage

// Solution
mprintf("BOD = (DOb - DOi) * Dilution Factor\n")
mprintf(" BOD = (DOb - DOi) * (ml of sample after dilution) / (ml of sample before dilution)\n")

BOD = (d0 - d1) * (v1 / v0)
mprintf(" BOD = %d ppm",BOD)

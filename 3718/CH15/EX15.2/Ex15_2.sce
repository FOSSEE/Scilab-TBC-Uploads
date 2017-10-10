//Chapter 15: Environmental Pollution and Control
//Problem: 2
clc;

//Declaration of Variables
v0 = 30     // cm cube, effluent
v1 = 9.8    // cm cube, K2Cr2O7
M = 0.001   // M, K2Cr2O7

// Solution
Oeff = 6 * 8 * v1 * M
mprintf("30 cm cube of effluent contains =:%.4f mg of O2\n",Oeff)

cod = Oeff * 1000 / 30.

mprintf(" 1l of the effluent requires %.2f mg of O2\n",cod)
mprintf(" COD of the effluent sample=%.2f ppm",cod)

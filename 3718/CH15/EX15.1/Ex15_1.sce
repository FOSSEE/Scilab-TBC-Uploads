//Chapter 15: Environmental Pollution and Control
//Problem: 1
clc;

MM = 294// Molar mass, K2Cr2O7

//Declaration of Variables
v_eff = 25   // cm cube, 
v = 8.3      // cm cube, K2Cr2O7
M = 0.001    // M, K2Cr2O7

// Solution
w = v * 8 * 6 * M / 1000.

mprintf("8.3 cm cube of 0.006 N K2Cr2O7 =%.2e g of O2\n",w)
mprintf(" 25 ml of the effluent requires %.2e g of O2\n",w)

cod = w * 10 ** 6 / 25.
mprintf(" 1l of the effluent requires %.2fg of O2\n",cod)
mprintf(" COD of the effluent sample is %.2f ppm or mg/L",cod)

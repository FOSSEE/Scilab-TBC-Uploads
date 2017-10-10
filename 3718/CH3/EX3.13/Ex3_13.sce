//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 13
clc;

//Declaration of Constants
l_v = 101            //in cal /g, Latent headt of vap.
mwt = 78            // molecular weight of benzene

//Declaration of Variable
m = 2
Tb = 80.2          // C, boiling point of benzene

// Solution
Tb = Tb + 273      // K
d_h = l_v * mwt
d_s = d_h / Tb
d_g = d_h - Tb * d_s

mprintf("d_s = %.2f cal / K\n",d_s)
mprintf(" d_g = d_a = %d", d_g)

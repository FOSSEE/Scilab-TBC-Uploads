clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.15
// Page 238
printf("Example 5.15, Page 238 \n \n");

// solution

qv1 = 50  // l/s
qm = qv1*1.08  // kg/s
fi = qm*3.08*(263.15-258.15) // kW
lv = 384.19-168.7  // kJ/kg
qm2 = fi/lv
H = 256.35  // kJ/kg
x = poly(0, 'x')
p = H*(qm2+x) - 168.7*qm2-x*384.19
a = qm2+roots(p)
printf(" Flow of vapor from he chiller = "+string(a)+" kg/s.")

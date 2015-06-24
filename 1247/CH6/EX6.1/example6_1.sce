clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.1
// Page 346
printf("Example 6.1, Page 346 \n \n");

// solution

// basis = 100kmol of feed
Benzene = 100*.72// kmol
Toulene = 100-Benzene //kmol
// use fig 6.1
// D = distillate, B = bottom
// F = B + D        (i)   overall material balance
xd = .995
xb = .03 
xf = .72
// xd*D + xb*B = F*xf     (ii)    benzene balance
// solving (i) and (ii)
D = 71.5 //kmol
B = 28.5 //kmol
printf("(a) \n \n performing overall material balance for 100kmol of feed we get "+string(D)+"kmol as distillate and "+string(B)+"kml as bottom product. \n \n \n (b) \n \n ")
// enthalpy balance
// use fig 6.2
R = 1.95
v = D*(1+R) //kmol    total overhead vapours
To = 273.15 //K
// using fig 6.2
Ev = 42170 //kJ/kmol    enthalpy of vapours overhead
El = 11370 //kJ/kmol    enthalpy of liquid
E1 = Ev-El // enthalpy removed in condenser
Hc = E1*v  // heat load of condenser
Hd = El*71.5
Hb = 18780*28.5
Hf = 44500*100
Hn = Hd+Hc+Hb-Hf // kJ    heat load of reboiler
printf(" performing overall enthalpy balance we get Heat load of condenser = "+string(Hc)+"kJ/kmol and Heat load of reboiler = "+string(Hn)+"kJ/kmol.")

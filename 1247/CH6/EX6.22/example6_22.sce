clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.22
// Page 398
printf("Example 6.22, Page 398 \n \n");

// solution
// basis cloth speed = 1.15 m/s
prod = 1.15*1.2*3600*.095
moisti = .90 // kg/kg bone dry cloth 
moisto = .06
evp = 471.96*(moisti-moisto)
// using fig 6.15 and 6.16
H1 = .01805 
H2 = .0832
dH = H2-H1
qm1 = evp/dH // kg dry air/h
Vh = .8837 //m^3/kg dry air
qv = qm1*Vh
DP1 = 296.5 //K
DP2 = 322.5 //K
lambdaV2 = 2384.1 //kJ/kg
To = 273.15 //K
fi1 = prod*1.256*(368-303)+prod*.06*(368-303)*4.1868 // kJ/h
fi2 = evp*(322.5-303.15)+evp*lambdaV2 //kJ/h
ia1 = 1.006*(303.15-273.15)+2556.4*.01805 //kJ/kg dry air
ia2 = 1.006*(322.8-273.15)+2591.5*.0832+(1.006+1.84*.0832)*(393-328.8)
fi2 = ia2-ia1
hlost = fi2-fi1 // kJ/h
// using Appendix IV
h = 720.94 //kJ/kg
lambdav = 2046.5 // kJ/kg
steami = (h+lambdav)*885 // kJ/h
fi4 = h*885 //kJ/h
qm2 = 885/evp
printf("(a) \n \n Bone dry production of the dryer = "+string(prod)+" kg/h. \n \n \n(b) \n \n The evaporation taking place in the dryer = "+string(evp)+" kg/h. \n \n \n(c) \n \n The air circulation rate = "+string(qv)+" m^3/h.")

clc;
p=101.325; // Atmospheric pressure in kPa
// The complete combustion equation for actane
 // yC8H18+ x (O2+3.76N2)  → n1 CO2+n2 H2O+n3 O2+n3 N2
x=12.5*1.5; y=1;
n1=8; n2=9; n3=6.28; n4=70.5;
n=n1+n2+n3+n4; // Total number of moles of the products
AFm=(x+x*3.76)/y ;// Air fuel ratio
m=28.84;
M=116; // Molecular weight of octane
AF=AFm*m/M;
yco2=n1/n; yH2O=n2/n; yO2=n3/n; yN2=n4/n;
pH2O=p*yH2O; // Partial pressure of water vapour in the products
Tsat=45.21; // In oC
disp ("kg air/kg octane",AF,"Air fuel ratio = ");
disp ("If the products are cooled below 25 oC then,  the water vapour will condense. Because the cooled temperature is less than dew point temperature of water vapour i.e., T < Tsat.");

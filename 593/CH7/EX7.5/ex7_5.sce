clear;
//clc();

// Example 7.5
// Page: 149
printf("Example-7.5  Page no.-149\n\n");

//***Data***//

T = 220+460;//[R] Temperature in rankine
P = 1000;//[psia] Pressure
y_methane = 0.784; // Mol fraction of methane in the given mixture
y_butane = (1-y_methane);// Mol fraction of n-butane in the given mixture
R = 10.73;//[(psia*ft^(3)/(lbmol*R))] gas constant

// In this problem, we need the partial molar volume residual.
// We find its value at 100 psia by plotting the volume resduals at 100 psia as a function of mole fraction, as shown in figure 7.9( page 150 )
// drawing the tangent to the data points at x_methane = 0.784 and reading its intercept on the 100 mol% methane axis as 0.6 ft^(3)/lbmol
// similarily volume residual is determined for all other pressures and plot them vs pressure, as shown in Figure 7.10 (page 151). 
// From this plot we find the integral we need by numerical integration ( trapazoid rule ) as 290 ft ^(3)/lbmol.

// Thus, for methane 
// f_i/(P*y_i) = exp((-1/(R*T))*integrate(a_i*dp)) with integral limits 0 to P = 1000 psia
// Let I = intefrate(a_i*dp))   and  J = f_i/(P*y_i) , so
Im = 290;//[ft^(3)/lbmol]

// and
Jm = exp((-1/(R*T))*Im);

// hence 
f_methane = Jm*P*y_methane;//[psia] fugacity of methane

// doing the same process for butane, we find 
Ib = 5859;//[ft^(3)/lbmol]
// so, for butane we find
Jb = exp((-1/(R*T))*Ib);
// hence 
f_butane = Jb*P*y_butane;//[psia] fugacity of butane

printf(" Fugacity of the methane in the gaseous mixture is %0.0f psia\n",f_methane);
printf(" Fugacity of the butane in the gaseous mixture is  %0.1f psia",f_butane);

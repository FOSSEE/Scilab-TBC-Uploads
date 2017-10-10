// Calculating the stress on the ring
clc;
disp('Example 8.2, Page No. = 8.8')
// Given Data
rpm = 3000;// Speed in r.p.m.
Rm = 0.35;// Radius of overhang (in meter)
Rmr = 0.49;// Radius of ring (in meter)
G = 300;// Weight of copper winding (in kg)
gr = 7800;// Density of ring material (in kg per meter cube)
tb = 350*45*10^(-6);// Area of retaining ring
// Calculation of the stress on the ring
n = rpm/60;// Speed in r.p.s
Dm = 2*Rm;// Diameter of overhang (in meter)
Dmr = 2*Rmr;// Diameter of ring (in meter)
ft = (%pi*n*n*G*Dm/tb)+(%pi*%pi*n*n*gr*Dmr*Dmr);// Stress on ring (in Newton per meter square)
disp(ft,'Stress on ring (Newton per meter square)=');
//in book answer is 289.5 (MN per meter square).  The answers vary due to round off error

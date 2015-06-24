//For 5 inch nominal pipe line, diameter D:
Di=5.047;
//Length of pipeline(in feet):
L=6;
//Operatng spped (in rpm):
N=1750;
//Water level abovepump centreline(in feet):
h=3.5;
//Temperature 1 of water(in Farenheit):
T1=80;
//Temperature 2 of water (in Farenheit):
T2=180;
//Volume flow rate of water(in gpm):
Q=1000;
//Minor loss Coefficients:
K=0.5; SE=30; OGV=8;
//Atmospheric pressure(in lbf/in^2):
patm=14.7;
//Density of air(slug/ft^3):
p=1.93;
//Acceleration due to gravity(in ft/sec^2):
g=32.2;
//Head(in feet) due to vapor pressure of water for T =80F:
Hv1=1.17;
//Head(in feet) due to vapor pressure of water for T =180F:
Hv2=17.3;
//Kinematic viscosity of water at 80F:
v=0.927e-5;
//Value of discharges for plotting NPSHR(in gpm):
Qh=[500 700 900 1100 1300]
//Values of NPSHR obtained from Fig. D3 of appendix D:
NPSHRp=[7 8 9.5 12 16]
clc;clear;
//Example 17.5

//given data
Vi=150;
Ti=600+273;
Pi=1;
At=50/10000;//converted into m^2

//from Table A-2a
R=0.287;//in kJ/kg-K
cp=1.005;//in kJ/kg-K
k=1.4;

//calculations
Toi=Ti+Vi^2/(2*cp*1000);//factor of 1000 to convert kJ to J
Poi=Pi*(Toi/Ti)^(k/(k-1));
//flow is isentropic 
//stagnation temp. and pressure values remain constant
To=Toi;
Po=Poi;
//from Table 17–2
//The critical-pressure ratio is 0.5283

//Part a
Pb=0.7;
Pca=Pb/Po;
// Pca > 0.5283
//exit plane pressure is equal to the back pressure
Pt=Pb;
//from Table A–32
Mat=0.778;
//Tt/To = 0.892
Tt=0.892*To;
pt=Pt*1000/(R*Tt);//factor of 1000 to convert MPa to kPa
Vt=Mat*sqrt(k*R*Tt*1000);//factor of 1000 to convert kJ to J
ma=pt*At*Vt;
disp(ma,'the mass flow rate through the nozzle when the back pressure is 0.7 MPa in kg/s');

//Part b
Pb=0.4;
Pca=Pb/Po;
// Pca < 0.5283
//sonic conditions exists at the exit
Ma=1;
mb=At*(Po*1000)*(sqrt(k*1000/(R*To)))*(2/(k+1))^((k+1)/(2*(k-1)));//factor of 1000 to convert MPa to kPa and kJ to J
disp(mb,'the mass flow rate through the nozzle when the back pressure is 0.4 MPa in kg/s');

//Exa 10.8
clc;
clear;
close;
//given data
format('v',8);
A=0.5;// in m^2
Pi=2.2;// in bar
Pi=Pi*10^5;// in N/m^2
Pf=2.18;// in bar
Pf=Pf*10^5;// in N/m^2

T=300;// in K
S=0.072;// in m^3
V=0.028;// in m^3
L=10;// in mm
L=L*10^-3;// in meter
R=287;
// Diffusivity of air in rubber D
// Initial mass of air in the tube
mi= Pi*V/(R*T);// in kg
//final mass of air in the tube
mf= Pf*V/(R*T);// in kg
// Mass of air escaped
 ma = mi-mf;//in kg
// Formula Na = ma/A = mass of air escaped / Time elapsed * area
A=6*24*3600*0.5;
Na = ma/A;//in kg/sm^2
// Solubility of air should be calculated at mean temperature
S_meanTemperature=(2.2+2.18)/2;// in bar
//Solubility of air at the mean inside Pressure is 
S=S*S_meanTemperature;// in m^3/m^3 of rubber
disp("The air which escapes to atmosphere will be 1 bar and its solubility will remain at 0.72 m^3 of air per m^3 of rubber");
V1=S;
V2=0.072;
T1=T;
T2=T;
P1=2.19*10^5;// in N/m^2
P2=1*10^5;// in N/m^2
// The corresponding mass concentration at the inner and outer surface of the tube, from gas equation are calculated as
Ca1= P1*V1/(R*T1);// in kg/m^3
Ca2= P2*V2/(R*T2);// in kg/m^3
// The diffusion flux rate of air through the rubber is given by
// Na = ma/A = D*(Ca1-Ca2)/del_x, here
del_x=L;
D=Na*del_x/(Ca1-Ca2);
disp(D,"Diffusivity of air in rubber in m^2/s");

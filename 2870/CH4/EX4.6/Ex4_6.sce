clc;clear;
//Example 4.6

//given data
m=5;
P1=200;
T=25;

//from Table A–4
//the liq. is in compressed state at 200 kPa and 25 C
vf=0.001;
vg=43.340;
uf=104.83;
ufg=2304.3;
v1=vf;
u1=uf;

//calculations

//Part - a
V1=m*v1;
Vtank=2*V1;
disp(Vtank,'the volume of the tank in m^3');

//Part - b
V2=Vtank;
v2=V2/m;
//from Table A–4 
// at T=25 vf=0.101003 m^3/kg and vg=43.340 m^3/kg
// vf<v2<vg therefore it is saturated liquid–vapor mixture
P2=3.1698;
disp(P2,'the final pressure in kPa');

//Part - c
//Ein - Eout = Esystem
//Qin= dU = m(u2 - u1)
x2=(v2-vf)/(vg-vf);
u2=uf+x2*ufg;
Qin=m*(u2 - u1);
disp(Qin,'the heat transfer for this process in kJ')

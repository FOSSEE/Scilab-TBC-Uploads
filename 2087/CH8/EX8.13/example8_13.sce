

//example 8.13
//calculate hydrodynamic earthquake pressure
//moment at 50m below water surface
clc;funcprot(0);
//given
c=1;
H=100;           //heigth of dam
hw=100;          //heigth of water in reservior
FB=1;            //free board
s=0.15;          //slope of upstream face
gamma_w=9.81;    //unit weigth of water
alphah=0.1;

theta=atan(s);
y=50;
Cm=0.735*(1-(theta*2/%pi));
Cy=(Cm/2)*((y*(2-y/hw)/hw)+(y*(2-y/hw)/hw)^0.5);
pe=Cy*alphah*gamma_w*hw;
F=0.726*pe*y;
M=0.299*pe*y^2;
pe=round(pe*1000)/1000;
F=round(F*10)/10;
M=round(M*10)/10;
mprintf("hydrodynamic earthquake pressure=%f kN/square.m\nshear=%f kN/m.\nMoment=%f kN-m/m.",pe,F,M);


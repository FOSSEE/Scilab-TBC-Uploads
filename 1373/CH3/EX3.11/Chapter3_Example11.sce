//Chapter-3, Example 3.11, Page 66
//=============================================================================
clc
clear

//INPUT DATA
T1=2000;//Temperature of hot gas in degree C
Ta=45;//Room air temperature in degree C
Qr1=23.260;//Heat flow by radiation from gases to inside surface of the wall in kW/m^2
h=11.63;//Convective heat transfer coefficient in W/m^2.
C=58;//Thermal conductance of the wall in W/m^2.K
Q=9.3;//Heat flow by radiation from external surface to the surrounding in kW.m^2
T2=1000;//Interior wall temperature in degree C

//CALCULATIONS
qr1=Qr1;//Haet by radiation in kW/m^2
qc1=h*((T1-T2)/1000);//Heat by conduction in kW/m^2
q=qc1+qr1;//Total heat entering the wall in kW/m^2
R=(1/C);//Thermal resistance in m^2.K/W
T3=T2-(q*R*1000);//External wall temperature in degree C
Ql=q-Q;//Heat loss due to convection kW/m^2
h4=(Ql*1000)/(T3-Ta);//Convective conductance in W/m^2.K

mprintf('The surface temperature is %i degree C \nThe convective conductance is %3.1f W/m^2.K',T3,h4)

//=================================END OF PROGRAM==============================

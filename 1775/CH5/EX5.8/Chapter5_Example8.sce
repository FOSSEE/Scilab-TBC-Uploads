//Chapter-5, Illustration 8, Page 257
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
Ve=30;//Volume of air entering compressor per hour in m^3
P1=1;//Presure of air entering compressor in bar
N=450;//Speed in rpm
P2=6.5;//Pressure at point 2 in bar
nm=0.8;//Mechanical efficiency
nv=0.75;//Volumetric efficiency
niso=0.76;//Isothermal efficiency

//CALCULATIONS
Vs=Ve/(nv*3600);//Swept volume per sec in (m^3)/s
V=(Vs*60)/N;//Swept volume per cycle in m^3
V1=(Ve*60)/(3600*N);//Volume at point 1 in m^3
Wiso=P1*100*V1*log(P2/P1);//Isothermal workdone per cycle
Wact=Wiso/niso;//Actual workdone per cycle on air
MEP=(Wact/V)/100;//Mean effective pressure in bar
IP=(Wact*N)/60;//Indicated power in kW
BP=IP/nm;//Brake power in kW

//OUTPUT
mprintf('Mean effective pressure is %3.3f bar \n Brake power is %3.2f kW',MEP,BP)







//==============================END OF PROGRAM=================================

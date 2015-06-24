clc
clear
//Input data
D=0.1;//Diameter of the bore of a single acting compressor in m
L=0.1;//Length of the stroke in m
N=400;//Operating speed of the compressor in in rpm
Vc=0.00008;//Clearance volume in m^3
n=1.2;//Polytropic index
T1=303;//Initial temperature in K
Tf=293;//Final temperature in K
P1=0.95;//Initial pressure in bar
P2=8;//Final pressure in bar
Pf=1.013;//Free air pressure in bar

//Calculations
Vs=(3.14*D^2*L)/4;//Stroke volume of the compressors in m^3
V1=Vc+Vs;//Initial volume of air is equal to cylinder volume in m^3
V4=Vc*(P2/P1)^(1/n);//Air in the clearance volume expands during suction stroke to V4
Ve=V1-V4;//Effective swept volume in m^3
Vf=(P1*(V1-V4)*Tf)/(T1*Pf);//Free air delivered per cycle can be obtained in m^3
A=Vf*N;//Free air delivered per minute in m^3/min

//Output
printf('(a)Free air delivered per cycle is %3.6f m^3\n (b)Free air delivered per minute is %3.4f m^3/min',Vf,A)

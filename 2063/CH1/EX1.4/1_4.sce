clc
clear
//Input data
D=0.1;//Diameter of the cylinder in m
L=0.15;//Stroke length in m
Vc=0.295*10^-3;//Clearance volume in m^3
r=1.4;//Isentropic constant of air

//Calculations
Vs=(3.14/4)*(D^2*L);//Swept volume in m^3
r1=(Vc+Vs)/Vc;//Compression ratio
n=(1-(1/r1)^(r-1))*100;//Otto cycle efficiency in percentage

//Output
printf('The air standard efficiency of air is %3.2f percent',n)

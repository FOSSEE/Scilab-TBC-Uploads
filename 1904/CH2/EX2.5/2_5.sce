//To determine the diversity load diversity and coincidence factor
//Page 48
clc;
clear;

Pi=2000*(10^3); //Peak for industrial load
Pr=2000*(10^3); //Peak for residential load
Dg=3000*(10^3); //System peak load as specified in the diagram
P=[Pi,Pr]; //System peaks for various loads 

Fd= sum(P)/Dg; //Diversity factor
LD= sum(P)-Dg; //Load diversity factor
Fc=1/Fd; // Coincidence factor

printf('a) The diversity factor of the load is %g\n',Fd)
printf(' b) The load diversity of the load is %g kW\n',(LD/1000))
printf(' c) The coincidence factor of the load is %g\n',Fc)


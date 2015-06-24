
clear ;
clc;

printf("\t Example 11.14\n");
T1=325;          //temp. of helium-water tube,K
l=0.2;    //length of tube,m
x=0.01;       // mole fraction of water
//the vapor pressure of the liquid water is approximately the saturation pressure at the water temp.
p=1.341*10000 ;       //vapor pressure using steam table,Pa
x1=p/101325;    //mole fraction of saturated water
R=8314.472;    //gas constant,J/(kmol*K)
c= 101325/(R*T1);    //mole concentration in tube,kmol/m^3
D12=1.067*10^-4;        //diffusivity ofwater with respect to helium,m^2/s 
Nw=c*D12*log(1+(x-x1)/(x1-1))/l ;   //molar evaporation rate,kmol/(m^2*s)

nw=Nw*18.02;        // mass evaporation rate,kg/(m^2*s)

//S=1+(x1-1)*exp(Nw*y/(c*D12))    //conentration distribution of water-vapor
printf("\t conentration distribution of water-vapor is  : x1(y)=1-0.8677*exp(0.6593*y) where y is expressed in meters.\n")
//end
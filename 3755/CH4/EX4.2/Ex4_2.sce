clear
//
//
//

//Variable declaration    
T=273+25;     //temperature(K)
m=4;      
n=5*10^11;    //density(per m^3)
V=(2*2.82*10^-10)^3;     //volume(m^3)
kB=8.625*10^-5;

//Calculations
N=m/V;
Ep=2*kB*T*log(N/n);

//Result
printf("\n energy required is %0.3f eV",Ep)

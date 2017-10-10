clear
//
//
//

//Variable declaration
mew0=4*%pi*10^-7;
phi=2*10^-6;     //flux(weber)
A=10^-4;     //area(m^2)
N=300;      //number of turns
l=30*10^-2;    //length(m)
i=0.032;     //current(ampere)

//Calculation
B=phi/A;       //flux density(weber/metre^2)
n=N/l;
H=n*i;        //magnetic intensity(amp-turn/metre)
mew=B/H;      //permeability of ring(weber/amp-metre)
mewr=mew/mew0;      //relative permeability
chi=mewr-1;      //magnetic susceptibility

//Result
printf("\n flux density is %0.3f *10^-2 weber/metre^2",B*10^2)
printf("\n magnetic intensity is %0.0f amp-turn/metre",H)
printf("\n permeability of ring is %0.3f *10^-7 weber/amp-metre",mew*10^7)
printf("\n relative permeability is %0.1f ",mewr)
printf("\n magnetic susceptibility is %0.3f ",chi)
printf("\n answer in the book is wrong")

clc//
//
//

//Variable declaration
H=10^4;  //magnetic field(amp/m)
chi=3.7*10^-3;
mew0=4*%pi*10^-7;

//Calculation
M=chi*H;     //magnetisation of material(A/m)
B=mew0*(M+H);     //flux density(T)

//Result
printf("\n magnetisation of material is %0.3f A/m",M)
printf("\n flux density is %0.4f wb/m^2",B)

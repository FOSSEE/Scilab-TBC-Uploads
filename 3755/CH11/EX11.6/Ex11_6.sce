clear
//
//
//

//Variable declaration
H=10^6;      //magnetizing force(amp/m)
mew0=4*%pi*10^-7;
chi=1.5*10^-3;       //susceptibility

//Calculation
M=chi*H;      //magnetisation of material(A/m)
B=mew0*(M+H);    //flux density(T)

//Result
printf("\n magnetisation of material is %0.3f *10^3 A/m",M/10^3)
printf("\n flux density is %0.3f T",B)
printf("\n answer in the book varies due to rounding off errors")

clear
//
//
//

//Variable declaration
mew0=4*%pi*10^-7;
chi=948*10^-11;       //susceptibility

//Calculation
mewr=1+chi;      //relative permeability
mew=mewr*mew0;       //absolute permeability

//Result
printf("\n relative permeability is %0.3f ",mewr)
printf("\n absolute permeability is %0.3f *10^-6",mew*10^6)

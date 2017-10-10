clear
//
//
//

//Variable declaration
mew0=4*%pi*10^-7;
B=0.2;     //magnetic induction(web/m^2)
H=500;        //magnetic field intensity(amp/m)

//Calculation
mewr=B/(mew0*H);      //relative permeability
chi=mewr-1;       //susceptibility

//Result
printf("\n relative permeability is %0.1f ",mewr)
printf("\n susceptibility is %0.1f ",chi)
printf("\n answer in the book varies due to rounding off errors")

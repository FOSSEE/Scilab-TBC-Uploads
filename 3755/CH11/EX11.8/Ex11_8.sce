clear
//
//
//

//Variable declaration
new=6.5*10^15;        //frequency(Hz)
r=0.54*10^-10;        //radius(m)
e=1.6*10^-19;     //charge(coulomb)

//Calculation
mew_m=e*new*%pi*r^2;      //magnetic moment(A-m^2)

//Result
printf("\n magnetic moment is %0.2f *10^-24 A-m^2",mew_m*10^24)
printf("\n answer in the book varies due to rounding off errors")

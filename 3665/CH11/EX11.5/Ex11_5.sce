clc//
//
//

//Variable declaration
r=5*10^-2      //radius(m)
I=500*10^-3;    //current(A)

//Calculation
A=2*%pi*r^2;
mew_m=I*A;     //magnetic moment(Am^2)

//Result
printf("\n magnetic moment is %0.3f *10^-3 Am^2",mew_m*10^3)
printf("\n answer given in the book varies due to rounding off errors")

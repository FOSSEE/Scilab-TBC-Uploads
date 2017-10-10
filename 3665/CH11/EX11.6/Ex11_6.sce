clc//
//
//

//Variable declaration
r=5.29*10^-11;     //radius(m)
B=2;     //magnetic field(T)
e=1.602*10^-19;   //charge(c)
m=9.108*10^-31;    //mass(kg)

//Calculation
mew_ind=e^2*r^2*B/(4*m);      //change in magnetic moment(Am^2)

//Result
printf("\n change in magnetic moment is %0.3f *10^-29 Am^2",mew_ind*10^29)

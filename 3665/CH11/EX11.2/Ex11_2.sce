clc//
//
//

//Variable declaration
M=3300;     //magnetic field(amp/m)
H=220;  //magnetic field(amp/m)

//Calculation
chi=M/H;
mew_r=1+chi;      //relative permeability

//Result
printf("\n relative permeability is %0.3f ",mew_r)

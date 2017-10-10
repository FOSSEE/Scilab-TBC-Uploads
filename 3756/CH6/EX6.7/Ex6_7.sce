clc
//
//
//

//Variable declaration
Q=2000    //Quality Factor
f=240      //Frequency


//Calculations
Tau=((Q)/(2*3.14*f))
t=4*Tau

//Result
printf("\n The Time in which the amplitude decreases is %1.1f sec",t)

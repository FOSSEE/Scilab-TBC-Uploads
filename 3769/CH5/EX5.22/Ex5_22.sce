clear
//Given
R0=5                    //ohm
R100=5.23                  //ohm
Rt=5.795                   //ohm

//Calculation
t=((Rt-R0)/(R100-R0))*100

//Result
printf("\n The temperature of the bath is  %0.2f  degree C",t)

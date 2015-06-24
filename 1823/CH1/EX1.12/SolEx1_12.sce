//Solve Problem 1.11 using a SPICE method
//Solved Example 1.12 page no 21
clear
clc
printf("\nSolve Problem 1.11 using a SPICE method")
V1=1.231*(10^-2)    //V
I1=1*(10^-3)        //A
Z11=V1/I1         //Ohm
printf("\n The value of Z11=%0.2f Ohm",Z11)
V1=2.308*(10^-3)    //V
I2=1*(10^-3)        //A
Z12=V1/I2         //Ohm
printf("\n The value of Z12=%0.3f Ohm",Z12)
V2=4.615*(10^-3)    //V
I1=1*(10^-3)        //A
Z21=V2/I1           //Ohm
printf("\n The value of Z21=%0.3f Ohm",Z21)
V2=4.615*(10^-3)      //V
I2=1*(10^-3)          //A
Z22=V2/I2             //Ohm
printf("\n The value of Z22=%0.3f Ohm",Z22)

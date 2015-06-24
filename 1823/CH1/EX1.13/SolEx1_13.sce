//Determine the h parameters for the two-port network
//Solved Example 1.13 page no 22
clear
clc
printf("\nDetermine the h parameters for the two-port network")
V2=0        //V
Ia=0        //A
//h11=V1/I1
h11=10      //ohm
//Here I2=-I1
//Therefor h21=I2/I1 h21=-1
h21=-1 //ohm
Ia=V2/6    //A
I1=0        //A
V1=V2-10*(0.3)  //V
//h12=V1/V2
h12=0.5 //Ohm
I2=1.3  //A
V2=6    //V
h22=I2/V2   //Ohm
printf("\nThe value of h11=%1.3f ohm h21=%1.3f ohm h12=%1.3f ohm h22=%1.3f",h11,h21,h12,h22)


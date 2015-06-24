//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.23\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.23  (page no. 596) 
// Solution

hi=45; //Film coefficient on the inside of the pipe //Unit:Btu/(hr*ft^2*F)
r1=3.0/2; //Inside radius //Unit:inch
k1=26; //Unit:Btu/(hr*ft^2*F) //k=proportionality constant for steel pipe //k=thermal conductivity for fir //From the table
r2=3.5/2; //outide radius //Unit:inch
k2=0.026; //Unit:Btu/(hr*ft^2*F) //k=proportionality constant for mineral wool //k=thermal conductivity for fir //From the table
r3=5.50/2; //radius //Unit:inch
ho=0.9; //Film coefficient on the outside of the pipe //Unit:Btu/(hr*ft^2*F)
//Results of problem 11.23,
Ui=1/((1/hi)+((r1/(k1*12))*log(r2/r1))+((r1/(k2*12))*log(r3/r2))+(1/(ho*(r3/r1)))); //Unit:Btu/(hr*ft^2*F) //1 in.=12 ft //Heat transfer coefficient based on inside surface 
printf("Heat transfer coefficient based on inside surface is %f Btu/(hr*ft^2*F)\n",Ui); 
//Because Uo*Ao=Ui*Ai
Uo=Ui*(r1/r3); //Heat transfer coefficient based on outside surface //Unit:Btu/(hr*ft^2*F)
printf("Heat transfer coefficient based on outside surface is %f Btu/(hr*ft^2*F)\n",Uo);

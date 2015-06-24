//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.16\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.16  (page no. 575) 
// Solution

//This problem can not be solved directly,because the individual film resistances aree functions of unknown temperature differences.Therefore,
//From the first approximation,
h=1/2; //Coefficient of heat transfer //unit:Btu/(hr*ft^2*F)
//For area 1 ft^2,
R=(3/12)/0.07; //The wall resistance is deltax/(k*A) //k=0.07 //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity
Roverall=inv(1/2)+inv(1/2)+R; //the overall series resistance //Unit:Btu/(hr*ft*F)
printf("For h=0.5,the overall series resistance is %f Btu/(hr*ft*F)\n",Roverall);
//Using the value of Roverall,we can now obtain Q and individual temperature differences,
Ti=80; //warm air temperature //unit:fahrenheit
To=50; //cold air temperature //unit:fahrenheit
deltaT=Ti-To; //unit:fahrenheit  //Change in temperature
Q=deltaT/Roverall; //Unit:Btu/(hr*ft^2) //heat transfer //ohm's law (fourier's equation)
printf("For h=0.5,heat transfer is %f Btu/(hr*ft^2)\n",Q);
printf("For h=0.5,\n");
//deltaT through the hot air film is Q/(1/2)
printf("Temperaure difference through the hot air film is %f F\n",Q/(1/2));
//Throught the wall deltaT is R*Q
printf("Temperaure difference through the wall is %f F\n",Q*R);
//deltaT through the cold air film is Q/(1/2)
printf("Temperaure difference through the cold air film is %f F\n\n",Q/(1/2));

//With these temperature differences,we can now enter figures 11.12 and 11.14 to verify our approximation.From figure 11.14,we find h=0.42 Btu/(hr*ft*2*F)
//Using h=0.42,we have for the overall resistance (1/0.42)+(1/0.42)+R
h=0.42; //Coefficient of heat transfer  //unit:Btu/(hr*ft^2*F)
Roverall=inv(h)+inv(h)+R; //the overall series resistance //Unit:Btu/(hr*ft*F)
printf("For h=0.42,the overall series resistance is %f Btu/(hr*ft*F)\n",Roverall);
Q=deltaT/Roverall; //Unit:Btu/(hr*ft^2) //heat transfer //ohm's law (fourier's equation)
printf("For h=0.42,heat transfer is %f Btu/(hr*ft^2)\n",Q);
printf("For h=0.42,\n");
// deltat through both air films is Q/h
printf("Temperaure difference through the hot and cold air film is %f F\n",Q/h);
//and through the wall,deltat is Q*R
printf("Temperaure difference through the wall is %f F\n\n",Q*R);

//Entering figure 11.14,we find that h stays essentially 0.42,and our solution is that the heat flow is Q,the "hot" side of the wall is at Ti-(Q/h),the "cold" side  is at To+(Q/h) ,and temperature drop in the wall is Ti-(Q/h)-(To+(Q/h)).
printf("The temperature drop on the hot side of the wall is %f F\n",Ti-(Q/h));
printf("The temperature drop on the cold side of the wall is %f F\n",To+(Q/h));
printf("The temperature drop in the wall is %f F\n",Ti-(Q/h)-(To+(Q/h)));
//Which checks our wall deltat calculation.

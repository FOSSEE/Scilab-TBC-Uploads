//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.8\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.8  (page no. 561) 
// Solution

deltaX=4/12; //4 inch = 6/12 feet //deltaX=length //unit:ft
A=7*2; //area //area=hight*width //unit:ft^2
k=0.090; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity for fir //From the table
Rfir=deltaX/(k*A); //Resistance of fir //Unit:(hr*F)/Btu
printf("For fir,\n");
printf("The resistance is %f (hr*F)/Btu\n\n",Rfir);

deltaX=4/12; //4 inch = 6/12 feet //deltaX=length //unit:ft
A=7*2; //area //area=hight*width  //unit:ft^2
k=0.065; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity for pine //From the table
Rpine=deltaX/(k*A); //Resistance of pine //Unit:(hr*F)/Btu
printf("For pine,\n");
printf("The resistance is %f (hr*F)/Btu\n\n",Rpine);

deltaX=4/12; //4 inch = 6/12 feet //deltaX=length //unit:ft
A=7*2; //area //area=hight*width //unit:ft^2
k=0.025; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity for corkboard //From the table
Rcorkboard=deltaX/(k*A); //Resistance of corkboard //Unit:(hr*F)/Btu
printf("For corkboard,\n");
printf("The resistance is %f (hr*F)/Btu\n\n",Rcorkboard);

Roverall=inv(inv(Rfir)+inv(Rpine)+inv(Rcorkboard));
printf("The overall resistance is %f (hr*F)/Btu\n\n",Roverall);

T1=60; //temperature maintained at one face //unit:fahrenheit
T2=80; //tempetature maintained at other face //unit:fahrenheit
deltaT=T2-T1; //Change in temperature //unit:fahrenheit
Qtotal=deltaT/Roverall; //Q=Total Heat loss //Unit:Btu/hr; //ohm's law (fourier's equation)
printf("Total Heat loss from the wall is %f Btu/hr\n",abs(Qtotal));

//As a check,
Qfir=deltaT/Rfir; //Q=Fir Heat loss //Unit:Btu/hr; //ohm's law (fourier's equation)
printf("Heat loss from the wall made of fir is %f Btu/hr\n",abs(Qfir));
Qpine=deltaT/Rpine; //Q=Pine Heat loss //Unit:Btu/hr; //ohm's law (fourier's equation)
printf("Heat loss from the wall made of pine is %f Btu/hr\n",abs(Qpine));
Qcorkboard=deltaT/Rcorkboard; //Q=corkboard Heat loss //Unit:Btu/hr; //ohm's law (fourier's equation)
printf("Heat loss from the wall made of corkboard is %f Btu/hr\n",abs(Qcorkboard));
Qtotal=Qfir+Qpine+Qcorkboard; //Total Heat loss from the wall //unit:Btu/hr
printf("Total Heat loss from the wall is %f Btu/hr\n",abs(Qtotal));

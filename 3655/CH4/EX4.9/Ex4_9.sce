// Example 4.9
// Computation for the magnitude and polarity of the Hall voltage between the terminal 1 & 2,the value of Hall coefficient for case(A) and case(B),Hall coefficient and mobility of the majority carrier of the semiconductor for case(D)//
// Page no.108

clc;
clear;
close;

//Given data ;
e=1.60*10^-19;
nn=2.5*10^15;
B=6*10^-5;
I=10*10^-3;
w=5*10^-1
p1=4.0*10^-4;
Pp=2.5*10^15;
VH3=6*10^-3;
w3=0.5;
d=0.4;
Vd=5;
l=1.2;


//...................................(A)....................................//

//Calculation for charge density p//
p=-e*nn;

//negative sign denotes the tyoe of majority carrier in the conduction of current in the semiconductor is eletron//

//Calculation for magnitude of the Hall voltage//
VH=(B*I)/(p1*w);

//the polarity of Hall voltage at terminal1 is negative with respect to the terminal2//

//Calculation for Hall coefficient//
RH=1/p;

//...................................(B)....................................//

//Calculation for the charge density//
p2=e*Pp;

//Calculation for magnitude of the Hall voltage//
VH2=(B*I)/(p2*w);

//Calculation for Hall coefficient//
RH2=1/p2;

//The holes are deflected in the -Y direction as electron and hence the terminal1 will be positive with respect to the termninal2//

//...................................(D)....................................//

//Calculation for Hall coefficient//
RH3=(VH3*w3)/(I*B);

//Calculation for concentration of holes in semiconductor//
Pp3=1/(e*RH3);

//Calculation for mobility of the holes//
mu_p=(l/d)*(VH3/(B*Vd));


//Displaying the result in command window
printf("........................Part (A)..........................");
printf('\n \n Charge density = %0.1f x 10^-4 C/cm3',p*10^4);
printf('\n \n Magnitude of the Hall voltage = %0.1f x 10^-3 V',VH*10^3);
printf('\n \n Hall coefficient = %0.1f x 10^3 cm3/C',RH*10^-3);
printf("\n \n ........................Part (B)..........................");
printf('\n \n Charge density = %0.1f x 10^-4 C/cm3',p2*10^4);
printf('\n \n Magnitude of the Hall voltage = %0.0f mV',VH2*10^3);
printf('\n \n Hall coefficient = %0.1f x 10^3 cm3/C',RH2*10^-3);
printf("\n \n ........................Part (D)..........................");
printf('\n \n Hall coefficient = %0.0f x 10^3 cm3/C',RH3*10^-3);
printf('\n \n Concentration of holes in semiconductor = %0.2f x 10^15 cm^-3',Pp3*10^-15);
printf('\n \n Mobility of the holes = %0.0f cm2/V sec',mu_p);


//Answers are varying due to round off error//

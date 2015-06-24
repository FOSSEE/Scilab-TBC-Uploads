//To determine the better susbstation site
//Page 213
clc;
clear;
DivF=1.2; //Diversity Factor
DemF=0.6; //Demand Factor
CL=2000; //Connected Load Density in kVA per sq.miles

DD=DemF*CL/DivF; //Diversified Demand
A=4; //Area of the Substation

TSn=DD*A; //Peak Loads of A and B
Sm=TSn; //Peak Loads

//Constants for different conductors
Km=0.0004;
Kl=0.00095;
//Number of Laterals
Na=16; //Site A 
Nb=32; //Site B

//Length of the Main
La=2;
Lb=3;
//length of laterals
Lla=2;
Llb=1;
//Length of expres Load
Le=1;
Leffb=Le+((Lb-Le)/2); //Effective Length of the feeder in site B
//Voltage drops
VDa=(La*Km*Sm/2)+(Lla*Kl*Sm/(Na*2));
VDb=(Leffb*Km*Sm)+(Llb*Kl*Sm/(Nb*2));

printf('\nThe Voltage drop in Site A is %g percent\n',VDa)
printf('The Voltage drop in Site B is %g percent\n',VDb)
printf('Comparing the results we find Site A suitable due to its less percent voltage drop\n')
VDb=(La*Km*Sm/2)+(Lla*Kl*Sm/Na);

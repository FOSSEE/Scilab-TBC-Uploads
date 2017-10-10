//Chapter 2, Example 2.4, Page 39
clc
clear
//Recoil Kinetic Energy
m1 = 9.109*10**-31 // kg
c1 = 2.998*10**8 // m/s
E = 3 //Mev
mc2 = (m1*c1*c1)/(1.602*10**-13) // converting to MeV
E1 = 1/((1/E)+(1/mc2)*(1-cos(%pi/4))) 
printf("\n Recoil kinetic energy = %f MeV",E1);

//Answers may vary due to round off error

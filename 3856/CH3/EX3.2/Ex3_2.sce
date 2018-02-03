
//Calculate the Collision frequency Binary Collision Number and Mean free path of Nitrogen

//Example 3.2 

clc;

clear;

R=8.314;  //Gas constant in J K^-1 mol^-1

T=298;  //Temperature in Kelvin

mew=0.02800;  //Molar mass of Nitrogen in Kg mol^-1

Cbar=sqrt((8*R*T)/(%pi*mew))*100; //Average speed of Nitrogen in cm/s

Conc=2.5*10^19; //Concentration of dry air in cm^-3

Cd=3.75*10^-8;  //Collision diameter in cm

Z1=sqrt(2)*%pi*(Cd)^2*Cbar*Conc;....//Collision frequency in collisions s^-1

printf("Collision frequency of Nitrogen = %.1f*10^9 collisions s^-1",Z1*10^-9);//(The answers vary due to round off error)
 
Z11=(Z1/2)*Conc;....//Binary Collision number in cm^-3 s^-1

printf("\nBinary collision number = %.1f*10^28 collisions cm^-3 s^-1",Z11*10^-28);

lambda=Cbar/Z1; //Mean free path of Nitrogen in A/collision

printf("\nMean free path of Nitrogen = %.0f* A/collision",lambda*10^8);


//Calculate the Energy difference between the second orbital and first orbital of the electron  and Calculate the Energy difference between the second orbital and first orbital for Nitrogen molucule

//Example 14.7

clc;

clear;

n1=1; //First quantum number

n2=2; //Second quantum number 

m=9.109*10^-31; //Mass of the electron in kg

h=6.626*10^-34; //Planck's constant in J s

L1=0.10*10^-9; //Length of the box in m

E1=((n1^2)*(h^2))/(8*m*L1^2); //Energy for the enectron of first orbital in J

E2=((n2^2)*(h^2))/(8*m*L1^2); //Energy for the enectron of second orbital in J 

E3=E2-E1; //Energy difference second orbital and first orbital in J

printf("(a)Energy difference second orbital and first orbital of the electron = %.1f*10^-17 J",E3*10^17);

m1=4.65*10^-26; //Mass of the Nitrogen molucule in kg

L2=10*10^-2; //Length of the box in m

E4=((n1^2)*(h^2))/(8*m1*L2^2); //Energy for the enectron of first orbital in J

E5=((n2^2)*(h^2))/(8*m1*L2^2); //Energy for the enectron of second orbital in J 

E6=E5-E4; //Energy difference second orbital and first orbital in J 

printf("\n(b)Energy difference second orbital and first orbital for Nitrogen molucule = %.1f*10^-40 J",E6*10^40);

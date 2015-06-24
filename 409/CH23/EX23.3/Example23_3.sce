clear ;
clc;
// Example 23.3
printf('Example 23.3\n\n');
// Page no. 693
// Solution

// Given
// Heat capacity = 2.675*10^4 + (42.27)Tk - 1.425*10^-2Tk^2 J/(kg mol K)
// First convert heat capacity to Btu/(lb mol*F)  to get c + dT - eT^2, where
c = (2.675*10^4*.4536)/(1055*1.8) ;
d = (42.27*.4536)/(1055*1.8) ;
e = (1.425*10^-2*.4536)/(1055*1.8) ;

//Now convert Tk (Temperature in K) to TF (temperature in F) to get answer of form x + yT - zT^2,where
x = c + d*460/1.8 - e*((460/1.8)^2) ;
y = d/1.8;
z = e/(1.8*1.8) ;

printf('The required answer is %.2e + (%.2e)T - (%.3e) T^2 Btu/(lb mol*F) , where T is in degree F .  \n',x,y,z);

// Note answer in textbook seems wrong by order of 10^-3
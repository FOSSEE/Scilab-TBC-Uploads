//Example 25_6
clc();
clear;
//To find the apparent mass of a high speed electron
rati=1/3  //units in constant
mo=9.6*10^-31      //units in Kg
m=mo/(sqrt(1-rati^2))   //Units in Kg
printf("The apparent mass of High speed electron is mo=")
disp(m)
printf("Kg")
//In textbook answer printed wrong as m=9.*10^-31 Kg the correct answer is m=1.018*10^-30  

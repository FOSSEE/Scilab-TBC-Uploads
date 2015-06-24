clc
clear
//Input data 
V1=1;//Let us assume the initial volume be one in cc 
V2=4*V1;//Then the final volume is four times the initial volume in cc 

//Calculations 
S=2.3026*(log10(V2/V1));//The gain in entropy in terms of the gas constant in cal/K 

//Output
printf('The gain in entropy in terms of the gas constant is  %3.3f (R/J)cal/K',S)

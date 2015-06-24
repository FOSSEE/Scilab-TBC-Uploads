clc
clear
//Page number 484
//Input data 
T=6174;//The temperature of the black body in K 
l=4700;//The wavelength of the black body emitting in amstrong units 
l1=1.4*10^-5;//The wavelength to be emitted by the black body in m 

//Calculations 
L=l*10^-10;//The wavelength of the black body emitted at 6174 K in m 
L1=l1;//The wavelength to be emitted by the black body in m 
T1=(L*T)/L1;//The temperature to be maintained by the black body in K 

//Output
printf('The temperature to be maintained by the black body is %3.2f K ',T1)


clc
clear
//Page number 486
//Input data 
T1=6174;//The temperature of the black body in K 
l1=4700;//The wavelength emitted by the black body in amstrong units 
l2=1400;//The wavelength to be emitted by the black body in amstrong units 

//Calculations 
T2=(l1*T1)/l2;//The temperature to be maintained by the black body in K 

//Output 
printf('The temperature to be maintained by the black body is  %3.0f K ',T2)


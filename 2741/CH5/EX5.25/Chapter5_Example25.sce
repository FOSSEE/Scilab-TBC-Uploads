clc
clear
//Input data 
Tc=132;//The given temperature in K 
Pc=37.2;//The given pressure in atms 
R=82.07;//Universal gas constant in cm^3 atoms K^-1 

//Calculations 
a=(27/64)*((R)^2*(Tc)^2)/Pc;//Vander Waals constant in atoms cm^6 
b=((R*Tc)/(8*Pc));//Vander Waals constant in cm^3

//Output
printf('The Van der Waals constants are , \n (1) a = %3.4g atoms cm^6 \n (2) b = %3.2f cm^3 ',a,b)

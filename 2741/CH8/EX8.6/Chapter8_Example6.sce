clc
clear
//Input data 
x1=10;//The thickness of the ice layer on the surface of a pond in cm 
x=5;//The increase in the thickness of the ice when the temperature is maintained at -10 degree centigrade in cm 
x2=x1+(x);//The increased thickness of the ice layer on the surface of a pond in cm 
T=-10;//The temperature of the surrounding air in degree centigrade 
d=0.90;//The density of ice at 0 degree centigrade in g/cm^3 
L=80;//The latent heat of ice in cal/g 
K=0.005;//The thermal conductivity of ice  

//Calculations 
t=((d*L)/(2*K*(-T)))*(x2^2-x1^2);//The time taken to increase its thickness by 5 cm in sec 
t1=t/(60*60);//The time taken to increase its thickness by 5 cm in hours

//Output
printf('The time taken to increase its thickness by 5 cm is t = %3.0g s (or) %3.0f hours',t,t1)

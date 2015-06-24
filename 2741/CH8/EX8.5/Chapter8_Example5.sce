clc
clear
//Input data 
x1=3;//The thickness of the ice layer on the surface of a pond in cm 
x=1;//The increase in the thickness of the ice when the temperature is maintained at -20 degree centigrade in mm 
x2=x1+(x/10);//The increased thickness of the ice layer on the surface of a pond in cm 
T=-20;//The temperature of the surrounding air in degree centigrade 
d=0.91;//The density of ice at 0 degree centigrade in g/cm^3 
L=80;//The latent heat of ice in cal/g 
K=0.005;//The thermal conductivity of ice  

//Calculations 
t=((d*L)/(2*K*(-T)))*(x2^2-x1^2);//The time taken to increase its thickness by 1 mm in sec 
t1=t/60;//The time taken to increase its thickness by 1 mm in min

//Output
printf('The time taken to increase its thickness by 1 mm is t = %3.2f s',t)



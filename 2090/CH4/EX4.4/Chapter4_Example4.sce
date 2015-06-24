
clc
clear
//Input data
r=21;//The compression ratio 
af=29;//Air/fuel ratio
T=1000;//The temperature at the end of compression in K
cv=42000;//The calorific value of the in kJ/kg
R=0.287;//Gas constant in kJ/kgK

//Calculations 
q23=cv/(af+1);//Heat transfer during the process 2-3 per kg of mixture in kJ
T3=[-0.997+[((0.997)^2)+(4*2411*14*10^-6)]^(1/2)]/(28*10^-6);//The temperature during the process 2-3 in K
function y=f1(x),y=(0.997+(28*10^-6)*x),endfunction
I=intg(T,T3,list(f1));//Integrating the above function
abs(I)
V3=(T3/T);//The ratio of volumes at 2 and 3 points 
Vs=(r-1);//Swept volume in terms of V2 
V=V3-1;//The difference in the volume at 2 and 3 points
pc=(V/Vs)*100;//The percentage stroke during which the combustion is completed in percent

//Output
printf('The percentage of stroke at which combustion is complete = %3.3f percent ',pc)

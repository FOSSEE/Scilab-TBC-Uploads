//clear//
//Caption:Program to determine incident and transmitted anlges
//Example13.9
//page464
clear;
clc;
n1 =1.00; //refractive index of air
n2 =1.45; //refractive index of glass
teta1 = asin(n2/sqrt(n1^2+n2^2));
teta2 = asin(n1/sqrt(n1^2+n2^2));
Brewster_Condition = teta1+teta2;
disp(teta1*57.3,'Incident angle in degrees teta1 =')
disp(teta2*57.3,'transmitted angle in degrees teta2=')
disp(Brewster_Condition*57.3,'sum of the incident angle and transmitted angle, Brewster_Condition=')
//Result
//Incident angle in degrees teta1 =  55.411793  
//transmitted angle in degrees teta2 = 34.594837  
//sum of the incident angle and transmitted angle, Brewster_Condition=   90.00663 

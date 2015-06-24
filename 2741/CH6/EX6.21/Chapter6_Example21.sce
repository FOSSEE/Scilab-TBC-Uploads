clc
clear
//Input data 
p1=80;//The under pressure of benzene in cm of Hg 
t=80;//The normal boiling point of benzene in degree centigrade 
l=380;//The latent heat of vapourisation in joules/g 
d2=4;//Density of vapour at boiling point in g/litre 
d1=0.9;//Density of liquid in g/cm^3 

//Calculations 
p=p1-76;//The change in pressure in cm of Hg 
P=p*13.6*980;//The change in pressure in dynes/cm^2 
T=t+273;//The normal boiling point of benzene in K 
L=l*10^7;//Latent heat of vapourisation in ergs/g 
V1=1/d1;//The specific volume of liquid in cm^3 
V2=1000/d2;//The specific volume of vapour in cm^3 
T1=(P*T*(V2-V1))/L;//The increase in the boiling point of benzene in K 
T2=t+T1;//The boiling point of benzene at a pressure of 80 cm of Hg in degree centigrade 

//Output
printf('The boiling point of benzene at a pressure of 80 cm of Hg is  %3.3f degree centigrade ',T2)

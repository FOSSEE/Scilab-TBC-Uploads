clc
clear
//Input data 
T=600;//The melting point of lead in K 
d1=11.01;//Initial density of the lead in g/cm^3 
d2=10.65;//The final density of the lead in g/cm^3 
l=24.5;//The latent heat of fusion of lead in j/g 
p1=1;//The atmospheric pressure in atmospheres 
p2=100;//The given pressure in atmospheres 

//Calculations 
p=p2-p1;//The change in pressure in atmospheres 
P=p*76*13.6*980;//The change in pressure in dynes/cm^2 
L=l*10^7;//The latent heat of fusion of lead in ergs/g 
V1=1/d1;//The initial specific volume of the lead in cm^3 
V2=1/d2;//The final specific volume of the lead in cm^3
T1=(T*P*(V2-V1))/L;//The change in the temperature in K 
T2=T+T1;//Melting point of lead at 100 atmospheres pressure in K 

//Output 
printf('The melting point of lead at a pressure of 100 atmospheres is  %3.4f K ',T2)

//Example 14.9
T1=33;//Person's temperature (C)
T1=T1+273;//Person's temperature (K)
T2=22;//Ambient temperature of room (C)
T2=T2+273;//Ambient temperature of room (K)
A=1.50;//Surface area of skin (m^2)
e=0.97;//Emissivity 
sigma=5.67*10^-8;//Stefan-Boltzmann constant (J/s.m^2.K^4)
rate=sigma*e*A*(T2^4-T1^4);//Rate of radiative heat transfer (J/s)
printf('Rate of radiative heat transfer = %0.2f W',rate)
//The answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

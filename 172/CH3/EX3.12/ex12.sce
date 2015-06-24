//example 12
//determining specific using diffenet laws
clear
clc
T=100 //given temp.in 100 celsius
P=3 //given pressure in MPa
v1=0.0065 //specific volume in m^3/kg using table
printf("\n hence,the specific volume for R-134a using R-134a tables is v1 = %.3f m^3/kg. \n",v1)
M=102.3 //molecular mass in kg
R=8.3145 //in kJ/K
Ru=R/M //in kJ/K-kg
v2=Ru*(T+273)/(P*1000) //specific volume assuming R-134a to be ideal gas in m^3/kg
printf("\n hence,the specific volume for R-134a using R-134a the ideal gas laws is v2 = %.3f m^3/kg. \n",v2)
Tr=373.2/374.2 //reduced temperature using generalized chart
Pr=3/4.06 //reduced pressure using generalized chart
Z=0.67 //compressibility factor 
v3=Z*v2 // specific volume using generalized chart in m^3/kg
printf("\n hence,the specific volume for R-134a using the generalized chart is v3 = %.3f m^3/kg. \n",v3)

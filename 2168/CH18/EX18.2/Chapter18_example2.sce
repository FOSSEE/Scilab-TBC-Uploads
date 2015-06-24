clc
clear
//Input data
IMEP=10//Indicated mean effective pressure in kg/cm^2
x=20//Mixture strength 20% richer tan chemically correct
pIMEP=0.41//Pumping Indicated mean effective pressure in kg/cm^2
p1=0.97//Charge pressure at the beginning of compression in kg/cm^2
T1=100+273//Charge temperature at the beginning of compression in K
pm=0.91//Mean pressure during the conduction stroke in kg/cm^2
bn=70//Blower adiabatic efficiency in percent
T2=50//Temperature of the charge after delivery by the blower in degree C
dp=0.07//Pressure drop in kg/cm^2
pi=1.47//Charge pressure in the cylinder during the induction stroke in kg/cm^2
Ta=15+273//Atomspheric temperature in K
pa=1.03//Atmospheric pressure in kg/cm^2
g=1.4//Ratio of specific heats

//Calculations
T2x=((((pi/pa)^((g-1)/g)-1)/(bn/100))+1)*Ta+T2//Temperature in K
rIMEP=((pi/pa)*(T1/T2x))//Ratio of I.M.E.P
gIMEP=(rIMEP*IMEP)//Gross I.M.E.P in kg/cm^2
nsIMEP=(gIMEP+(pi-pa))//Net I.M.E.P supercharged in kg/cm^2
nuIMEP=(IMEP-pIMEP)//Net I.M.E.P unsupercharged in kg/cm^2 
iIMEP=(nsIMEP-nuIMEP)//Increase in I.M.E.P in kg/cm^2
pei=(iIMEP*100)/nuIMEP//Percentage increase

//Output
printf('Percentage increase in the net I.M.E.P due to supercharging is %3.1f percent',pei)


clc
clear
//Input data
r=20//Compression ratio
c=5//Cut off at 5%
dc=1//Specific heat at constant volume increases by 1%
Cv=0.171//pecific heat at constant volume in kJ/kg.K
R=29.3//Characteristic gas constant in mkg/kg/degree C
k=1.95//k can be obtained from relation de/e=-dcv/cv*(1-e/e)*(g-1)*((1/g)+ln(r)-(k^g*lnk)/(k^g-1))
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
g=(R/(J*Cv))+1//Ratio of specific heats
e=(1-((1/g)*(1/r^(g-1))*((k^g-1)/(k-1))))//Air standard efficiency of the cycle
dee=((-(dc/100)*((1-e)/e)*(g-1)*((1/g)+log(r)-((k^g*log(k))/(k^g-1))))*100)//Change in efficiency due to 1% change in cv

//Output
printf('Percentage change in air standard efficiency is %3.3f percent \n This indicates that there is a decrease in efficiency',dee)

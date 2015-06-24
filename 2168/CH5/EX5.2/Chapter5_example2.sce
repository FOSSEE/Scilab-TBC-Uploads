clc
clear
//Input data
r=8//Compression ratio
n=1.41//Adiabatic index of the medium
cv=0.17//Mean Specific heat at constant volume in kcal/kg/degree C
x=2//Percentage with which spcific heat at constant volume increases
R=29.3//Characteristic gas constant in mkg/kg/degree C
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
e=(1-(1/r^(n-1)))//Air standard efficiency neglecting the variation in specific heat
debye=((x/100)*((1-e)/e)*(R/(J*cv))*log(r))*100//Ratio of de and e in percent

//Output
printf('The change in air standard efficiency of the cycle is %3.3f percent',debye)

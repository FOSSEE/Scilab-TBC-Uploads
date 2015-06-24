clc
clear
//Input data
r=18;//The compression ratio 
l=6;//The cut off taking place corresponding of the stroke in percent
sc=2;//The specific heat at constant volume increases in percent
cv=0.717;//The specific heat at constant volume in kJ/kgK
R=0.287;//Gas constant in kJ/kgK

//Calculations
Vs=(r-1);//The ratio of swept volume and volume 2
B=((l/100)*Vs)+1;//The cut off ratio 
cp=cv+R;//The specific heat at constant pressure in kJ/kgK
R1=cp/cv;//The ratio of specific heats 
n=1-[[[[(1/r)^(R1-1)]*(B^R1-1)]/(R1*(B-1))]];//The efficiency of the diesel cycle 
dn=[((1-n)/n)*[(R1-1)*((log(r))-(((B^R1)*log(B))/(B^R1-1))+(1/B))]*(sc/100)]*100;//The efficiency decrease in percent

//Output
printf('The efficiency decreases by %3.3f percent ',dn)

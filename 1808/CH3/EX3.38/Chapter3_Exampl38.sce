clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=42000;//calorific value
R=0.287;//gas constant
g=1.35;//constant
t1=293;//temperature in K
t3=973;//temperature in K
nc=0.85;//compressor efficiency in percentage
Rp=5;//pressure ratio
nt=0.8;//turbine efficiency in percentage
p=1000;//power in mW

//CALCULATIONS
t2=t1*(Rp^((g-1)/g));//Temperature in K
t4=t3/(Rp^((g-1)/g));//Temperature in K
t21=t1+((t2-t1)/nc);//Temperature in K
t41=t3-((t3-t4)*nt);//Temperature in K
wna=cp*((t3-t41)-(t2-t1));//net work done in kJ/kg
m=p/wna;//Quantity of air circulation 
Qsa=cp*(t3-t21)/(nc);//Heat supplied in kJ/kg
nba=(wna/Qsa)*100;//Thermal efficiency in percentage

//OUTPUT
printf('(i)Quantity of air circulation  is %3.3f kg/s \n(ii)Heat supplied is %3.2f kJ/kg \n (iii)Thermal efficiency is %3.2f percentage',m,Qsa,nba)






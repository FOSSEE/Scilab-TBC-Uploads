clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=42000;//specific volume
R=0.287;//gas constant
g=1.4;//constant
t1=300;//temperature in K
t3=1000;//temperature in K
Rp=5;//Pressure ratio
ma=42.93;//mass of air
mf=0.5;//mass of fuel
nc=0.8;//compressor efficiency
nt=0.85;//turbine efficiency

//CALCULATIONS
t2=t1*(Rp^((g-1)/g));//Temperature in K
t4=t3/(Rp^((g-1)/g));//Temperature in K
t21=t1+((t2-t1)/nc);//Temperature in K
t41=t3-((t3-t4)*nt);//Temperature in K
wna=-ma*cp*(t21-t1)+(ma+mf)*(t3-t41);//Actual power available in kJ
ng=(wna/(mf*cv))*100;//Actual thermal efficiency in percentage

//OUTPUT
printf('(a)Actual power available is %3.2f kJ \n (b)Actual thermal efficiency is %3.2f percentage',wna,ng)


clc
clear
//INPUT DATA
nt=0.8;//Thermal efficiency in percentage
nc=0.8;//compressor efficiency in percentage
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant
g=1.4;//constant
t1=300;//temperature in K
t3=1500;//temperature in K
Rp=10;//pressure ratio

//CALCULATIONS
t2=t1*((Rp)^((g-1)/g));//temperature in K
t21=t1+((t2-t1)/(nc));//temperature in K
t4=t3/((Rp)^((g-1)/g));//temperature in K
t41=t3-(nt*(t3-t4));//temperature in K
wna=cp*((t3-t41)-(t21-t1));//net work done in kJ/kg
ng=wna/(cp*(t3-t21))*100;//Thermal efficiency in percentage
Rw=wna/(cp*(t3-t41));//work ratio

//OUTPUT
printf('(i)Net work done is %3.4f kJ/kg \n (ii)Thermal efficiency is %3.2f percentage \n (iii)Work ratio is %3.4f ',wna,ng,Rw)




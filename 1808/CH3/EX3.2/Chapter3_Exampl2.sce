clc
clear
//INPUT DATA
Tl=150;//engine temprature in Degree C
Th=1100;//engine temprature in Degree C
Qs=4000;//Heat is added in kJ/min

//CALCULATIONS
nc=((Th-Tl)/(Th+273))*100;//Efficiency of carnot cycle in percentage
wd=nc*Qs/100;//workdone in kJ/min
P=wd/(60);//power developed in kJ/s
Qr=Qs-wd;//Quality of heat rejected in kJ/min
ds=(Qs-wd)/(Tl+273);//Change in entropy during heat rejection in kJ/min

//OUTPUT
printf('(a)power developed in the engine is %3.2f kJ/s \n (b)Quality of heat rejected is %3.2f kJ/min \n (c)Change in entropy during heat rejection is %3.2f kJ/min',P,Qr,ds)


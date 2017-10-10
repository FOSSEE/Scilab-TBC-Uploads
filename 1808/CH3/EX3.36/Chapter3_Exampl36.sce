clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant
p1=100;//Pressure in kPa
t1=300;//temperature in K
g=1.35//constant
t3=1000;//temperature in K
nc=0.85;//compressor efficiency in percentage
nt=0.9;//Thermal efficiency in percentage


//CALCULATIONS
Rp=(t3/t1)^(g/(g-1));//maximum pressure ratio
Rpo=sqrt(Rp*nc*nt);//Pressure ratio for maximum work
t2=t1*(Rpo)^((g-1)/g);//temperature in K
t21=t1+((t2-t1)/nc);//temperature in K
t4=t3/(Rpo^((g-1)/g));//temperature in K
t41=t3-(nt*(t3-t4));//temperature in K
nbt=(((t3-t41)-(t21-t1))/(t3-t21))*100;//Thermal efficiency in percentage

//OUTPUT
printf('(i)Pressure ratio for maximum work is %3.2f \n (ii)Thermal efficiency is %3.2f percentage ',Rpo,nbt)





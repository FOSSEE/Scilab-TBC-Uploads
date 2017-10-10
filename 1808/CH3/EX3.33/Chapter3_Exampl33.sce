clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gs constant
p1=100;//pressure in kPa
t1=300;//temperature in K
t3=1300;//temperature in K
g=1.4;//index of expansion


//CALCULATIONS
Rp=(t3/t1)^(g/(g-1));//pressure ratio
Rpo=sqrt(Rp);//Pressure ratio which will give maximum net work output
t2=t1*(Rpo^((g-1)/g));//temperature in K
t4=t3/(Rpo^((g-1)/g));//temperature in K
wn=cp*t3*((1-(sqrt(t1/t3)))^2);//maximum net work output in kJ/kg
ng=(1-sqrt(t1/t3))*100;//Thermal efficiency in percentage
Rw=(1-sqrt(t1/t3));//work ratio at maximum work output
nc=(1-(t1/t3))*100;//Carnot efficiency for the same temperature limits in percentage

//OUTPUT
printf('(i)The pressure ratio which will give maximum net work output is %3.2f \n (ii)maximum net work output is %3.2f kJ/kg \n (iii)Thermal efficiency at maximum output is %3.2f percentage \n (iv)work ratio at maximum work output is %3.4f percentage \n (v)Carnot efficiency for the same temperature limits is %3.2f percentage',Rpo,wn,ng,Rw,nc)




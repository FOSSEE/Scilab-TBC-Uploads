clc
clear
//INPUT DATA
t1=293;//temperature in K
p2=10;//pressure in bar
p1=1;//pressure in bar
n=1.2;//index of compressor
m=1;//mass pf air
R=0.287;//gas constant
g=1.4;//constant

//CALCULATIONS
t2=t1*((p2/p1)^((n-1)/n));//temperature in K
wd=m*R*(t2-t1)/(n-1);//workdone during compression per kg of air
Q=((g-n)/(g-1))*wd;//heat transferred during compression per kg of air

//OUTPUT
printf('(i)Temperature at the end of the compressor is %3.2f K \n (ii)workdone during compression per kg of air %3.3f kJ/kg \n (iii)heat transferred during compression per kg of air %3.2f kJ/kg',t2,wd,Q)




clc
clear

//INPUT
t1=0;//temperature in deg.C
t2=100;//temperature in deg.C
t3=208;//temperature in deg.C
r1=3.5;//resistance in ohms
r2=5.2;//resistance in ohms
r3=6.9;//resistance in ohms
r4=9.4;//resistance in ohms

//CALCULATIONS
t4=(r3-r1)*100/(r2-r1);//temperature in deg.C
d=(t3-t4)/(2.08*1.08);//deflection
t5=(r4-r1)*100/(r2-r1);//temperature in deg.C
t6=(d*(((t5/100)^2)-t5/100))+t5;//temperature in deg.C
t7=(d*(((t6/100)^2)-t6/100))+t5;//temperature in deg.C
t8=(d*(((t7/100)^2)-t7/100))+t5;//temperature in deg.C
t9=(d*(((t8/100)^2)-t8/100))+t5;//temperature in deg.C

//CALCULATIONS
mprintf('the temperature of the bath is %3.2f deg.C',t9)

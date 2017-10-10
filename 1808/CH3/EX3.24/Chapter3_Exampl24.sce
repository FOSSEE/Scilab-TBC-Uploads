clc
clear
//INPUT DATA
Rc=10;//compression ratio
p1=101.325;//Pressure in kN/m^2
t1=303;//temperature in K
Qr=350;//heat rejected in kJ/kg
Qs=450;//heat supplied in kJ/kg
QR=452.92;//heat supplied in kJ/kg
g=1.4;//constant
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant

//CALCULATIONS
Q=Qr+Qs;//total heat in kJ/kg
p2=p1*(Rc^g);//pressure in kN/m^2
t2=t1*(Rc^(g-1));//temperature in K
t3=(Qs/cv)+t2;//temperature in K
p4=p2*(t3/t2);//Maximum pressure in kN/m^2
t4=(Qr/cp)+t3;//Maximum temperature in K
wn=Q-QR;//workdone in kJ/kg
v43=t4/t3;//volume ratio
v12=t1/t3;//volume ratio
v45=v43/Rc;//volume ratio
t5=t4*(v45^(g-1));//temperature in K
nd=(wn/Q)*100;//thermal efficiency in percentage
v1=R*t1/p1;//specific volume in m^3/kg
v2=v1/10;//specific volume in m^3/kg
pm=wn/(v1-v2);//mean effective pressure in kN/m^2
w34=R*(t4-t3);//workdone in 3-4 process
w45=R*(t4-t5);//workdone in 4-5 process
Rw=(wn/(2*(w34+w45)));//work ratio

//OUTPUT
printf('(a)The maximum pressure is %3.2f kN/m^2 \n maxium temperature is %3.2f K \n (b)thermal efficiency is %3.2f percentage \n (c)mean effective pressure is %3.2f kN/m^2 \n (d)work ratio is %3.3f ',p4,t4,nd,pm,Rw)




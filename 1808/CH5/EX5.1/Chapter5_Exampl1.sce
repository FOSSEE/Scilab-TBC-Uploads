clc
clear
//INPUT DATA
g=1.4;//for isentropic compression
n=1.3;//for polytropic compression
p1=1;//pressure in bar
v1=0.05;//piston displacement in m^3
R=0.287;//gas constant
Rp=6;//compression ratio at constant pressure
t1=293;//temperature in K

//CALCULATIONS
//Isentropic copression
m=(p1*10^5*v1)/(1000*R*t1);//mass of air handled in kg
t21=t1*(Rp^((g-1)/g));//Temperature at the end of compression
ws=p1*10^5*v1/1000;//workdone by air during suction
wc=m*R*(t21-t1)/(g-1);//workdone by air during compression
wd=m*R*t21;//workdone by air during delivery
wn=wc+wd-ws;//net work done on air during cycle in kJ

//Polytropic compression
t2=t1*(Rp^((n-1)/n));//Temperature at the end of compression
ws1=p1*10^2*v1;//workdone by air during suction
wc1=m*R*(t2-t1)/(n-1);//workdone by air during compression
Qc1=((g-n)/(g-1))*wc1;//Heat transferred to the cylinder walls
wd1=m*R*t2;//workdone by air during delivery
wn1=wc1+wd1-ws1;//net work done on air during cycle in kJ

//Isothermal compression
ws2=p1*10^2*v1;//workdone by air during suction
wc2=p1*10^2*v1*log(Rp);//workdone by air during compression
wd2=p1*10^2*v1;//workdone by air during delivery
wn2=wc2+wd2-ws2;//net work done during cycle

//OUTPUT
printf('(i)isentropic compression \n (a)Temperature at the end of compression is %3.2f K \n (b)Workdone by air during suction is %3.1f kNm \n (c)workdone during compression is %3.3f kJ \n  heat transfer to the cylinder walls is zero \n (d)workdone on air during delivery %3.2f kJ \n (e)Net workdone on air during cycle is %3.4f kJ \n',t21,ws,wc,wd,wn)

printf('(i)Polytropic compression \n (a)Temperature at the end of compression is %3.2f K \n (b)Workdone by air during suction is %3.1f kNm \n (c)workdone during compression is %3.3f kJ \n  heat transfer to the cylinder walls is %3.4f kJ \n (d)workdone on air during delivery %3.2f kJ \n (e)Net workdone on air during cycle is %3.4f kJ \n',t2,ws1,wc1,Qc1,wd1,wn1)

printf('(i)isothermal compression \n (a)Temperature at the end of compression is 293K \n (b)Workdone by air during suction is %3.1f kNm \n (c)workdone during compression is %3.3f kJ \n  heat transfer to the cylinder walls is equal to workdone during compression \n (d)workdone on air during delivery %3.2f kJ \n (e)Net workdone on air during cycle is %3.4f kJ \n',ws2,wc2,wd2,wn2)




//Example No. 5.6
clc;
clear;
close;
format('v',7);

//Given Data : 
Ia1=10;//A
V1=200;//volt
N1=1800;//rpm
Ra=0.6;//ohm
Rfield=360;//ohm
V2=180;//volt
I_line=20;//A
//Part (a)
Ia=Ia1-V1/Rfield;//A(At changeover time)
emf=V1-Ia*Ra;//volt
Ifield=emf/Rfield;//A(At changeover time)
Iout=Ia1-Ifield;//A
Rbraking=emf/Iout;//ohm(Braking Resistance)

I_initial=Iout;//A(Inotial current)
t=30;//sec(time taken to stop)
I_change_rate=I_initial/t;//A/s
//i=I_initial-I_change_rate*t , for 0<t<30(during braking time)
E_dissipated=integrate('(I_initial^2+(I_initial/30)^2/3*t^2-2*I_initial*I_initial/30*t)*Rbraking','t',0,t);//W-s
disp(E_dissipated,"Part(a) Energy dissipated in watts-sec : ");
//Part (b) 
//Rbraking=Rbraking-Rbraking/30*t;//ohm
E=integrate('I_initial^2*(Rbraking-Rbraking/30*t)','t',0,30);//Watt-sec
disp(E,"Part(b) Energy dissipated in watts-sec : ");
//calculation of first part is not accurate in the book.

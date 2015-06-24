//Caption: Find Secondary line voltage,Line Current,and output power for (a)delta/delta (b)star/star (c)delta/star (d)star/delta
//Exa:3.1
clc;
clear;
close;
V=6600//Supplied voltage(in volts)
I=20//Supplied current(in A)
n=15//Number of turns per phase
V_la=V/n
I_la=n*I
disp(V_la,I_la,'(a)(in A),(in volts)=')
V_lb=V/n
I_lb=I*n
disp(V_lb,I_lb,'(b)(in A),(in volts)=')
V_lc=(V*(3^0.5))/(n)
I_lc=(n*I)/(3^0.5)
disp(V_lc,I_lc,'(c)(in A),(in volts)=')
V_ld=V/(n*(3^0.5))
I_ld=(3^0.5)*I*n
disp(V_ld,I_ld,'(d)(in A),(in volts)=')
P=(3^0.5)*V*I/1000
disp(P,'(d)Output Power (in KVA)=')
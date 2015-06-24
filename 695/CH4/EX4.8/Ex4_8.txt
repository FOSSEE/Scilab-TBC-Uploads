//Caption:Determine the (a)Current flowing in various sections (b)Power transformed (c)Power conducted directly
//Exa:4.8
clc;
clear;
close;
P=400*1000;//in watts
pf=0.8;
V_1=550;//in volts
V_2=440;//in volts
I_2=P/(sqrt(3)*V_2*pf);// in amperes
I_1=I_2*V_2/V_1;//in amperes
I=I_2-I_1;
disp(I,'(a)Currents in sections Oa,Ob and Oc (in amperes)=');
disp(I_1,' Currents in sections Aa,Bb and Cc (in amperes)=');
P_trans=P*(1-(V_2/V_1));
disp(P_trans/1000,'(b)Power transformed by transformer action (in Kw)=');
P_cond=P-P_trans;
disp(P_cond/1000,'(c)Power Conducted directly(in Kw)=')
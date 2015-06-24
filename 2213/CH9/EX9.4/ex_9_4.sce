//Example 9.4 time duration ,speed and rheostatic losses
clc
clear;
close;
//given data :
format('v',6)
W=150;// in tonne
We=1.1*W;// in tonnes
Vm=30;//kmph
V=600;// in volts
r=10;// N/tonne
I=300;//in A
R=0.1;// in ohm
Ft=4*15000;// in N
G=1;//gradient in %
alfa=(Ft-(W*r)-(98.1*W*G))/(277.8*We);
Ts=Vm/alfa;
E_bse=(V/2)-(I*R);
E_bp=V-(I*R);
Tse=(E_bse/E_bp)*Ts;
disp("part (a)")
disp(Ts,"Duration of starting period,Ts(seconds) = ")
disp(Tse,"Duration for Series running,Tse(seconds) = ")
sptr=alfa*Tse;//in kmph
disp("part (b)")
disp(sptr,"speed of train at transition in kmph is")
sptr=alfa*Tse;//in kmph
rls=((V-(2*I*R))/2)*(2*I)*(Tse/3600);//watts hours
rlp=((V/2)/2)*(4*I)*((Ts-Tse)/3600);//watts hours
tl=rls+rlp;//
disp("part (c)")
disp(rls,"rheostat losses during series operation in W-hours")
disp(rlp,"rheostat losses during parallel operation in W-hours")
disp(tl,"total losses in W-hours is")

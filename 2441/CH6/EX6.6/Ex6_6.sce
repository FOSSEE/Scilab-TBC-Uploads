//exa 6.6
clc;clear;close;
format('v',6);
A=0.98*expm(%i*3*%pi/180);//Constant
B=110*expm(%i*75*%pi/180);//ohm/phase
P=50;//MVA
pf=0.8;//lagging
V=132;//kV
//Formula : Pr=|Vs|*|Vr|/|B|*cosd(Beta-delta)-|A|*|Vr|^2/|B|*cosd(Beta-alfa) :
betaSUBdelta=acosd((P*pf+abs(A)*V^2/abs(B)*cosd(atand(imag(B),real(B))-atand(imag(A),real(A))))/V^2*abs(B));
Qr=V^2/abs(B)*sind(betaSUBdelta)-abs(A)*V^2/abs(B)*sind(atand(imag(B),real(B))-atand(imag(A),real(A)));//MVar
Qr=P*0.6-Qr;//MVar//Since load require lagging component
disp(Qr,"(a) Capacity of shunt compensation equipment(MVar) : ");
//part(b)
//Formula : Pr=|Vs|*|Vr|/|B|*cosd(Beta-delta)-|A|*|Vr|^2/|B|*cosd(Beta-alfa) :
format('v',5);
P=0;//MW
betaSUBdelta=acosd((P*pf+abs(A)*V^2/abs(B)*cosd(atand(imag(B),real(B))-atand(imag(A),real(A))))/V^2*abs(B));
Qr=V^2/abs(B)*sind(betaSUBdelta)-abs(A)*V^2/abs(B)*sind(atand(imag(B),real(B))-atand(imag(A),real(A)));//MVar
Qr=P*0.6-Qr;//MVar//Since load require lagging component
disp(-Qr,"(b) Capacity of shunt compensation equipment(MVar) : ");

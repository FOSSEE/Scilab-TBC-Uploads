//Example No. 5.19
clc;
clear;
close;
format('v',7);

//Given Data : 
V=230;//V
f=50;//Hz
Rf=200;//ohm
Ra=0.25//ohm
Kv=1.1;//V/A-rad/s
Kt=1.1;//N-m/A^2
alfa_a=45;//degree
Ia=50;//A
alfa_f=0;
Vf=2*V*sqrt(2)/%pi*cosd(alfa_f);//V
Va=2*V*sqrt(2)/%pi*cosd(alfa_a);//V
If=Vf/Rf;//A
T=Kt*Ia*If;//N-m
Eb=Va-Ia*Ra-2;//V
omega=Eb/Kv/If;//rad/s
Eg=-Eb;//V
Va=Eg+Ia*Ra+2;//V
alfa=acosd(Va/2/V/sqrt(2)*%pi);//degree
disp(alfa,"Fringe angle to converter in degree : ");
P=abs(Va)*Ia;//W(power fed back to source)
disp(P,"Power fed back to source in Watts : ");
//Answer wrong in the book.

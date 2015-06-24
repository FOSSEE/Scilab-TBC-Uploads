clc;
Vl=230;       //Assigning values to parameters
f=50;
Rph=15;
L=0.03;
Xl=2*%pi*f*L;
Zph=15+%i*9.42;
[r,t]=polar(Zph)
Vph=Vl;
Iph=Vph/r;
Il=sqrt(3)*Iph;
P=sqrt(3)*Vl*Il*cos(t);
disp("Amperes",Iph,"Phase current");
disp("Amperes",Il,"Line current");
disp("Watts",polar(P),"Power absorbed");
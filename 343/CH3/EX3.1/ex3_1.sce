clc
f=50;                   //Assigning values to parameters
Vl=400;
Rph=20;
L=0.5;
Xl=2*%pi*f*L;
Zph=20+%i*157;
[r,t]=polar(Zph);
Vph=Vl/sqrt(3);        //Star connection
Iph=Vph/r;
Il=Iph;
P=sqrt(3)*Vl*Il*cos(t);
disp("Amperes",Il,"The line current for Star connection is");
disp("Watts",polar(P),"The total power absorbed in Star connection is");
Vph=Vl;              //Delta connection
Iph=Vph/r;
Il=sqrt(3)*Iph;
P=sqrt(3)*Vl*Il*cos(t);
disp("Amperes",Il,"The line current for Delta connection is");
disp("Watts",polar(P),"The total power absorbed in Delta connection is");
clc; clear; close;

//a
Ctotal=10.8;//in fermifarad(from Ex 6_4)
Reff1=12.5;// in kiloohm
Reff2=30;//in kiloohm
r1=1/2;
r2=1/4;
PHL=Reff1*r1*Ctotal;
disp(PHL,'Tphl(in picoseconds)=');//answer vary due to roundoff error
PLH=Reff2*r2*Ctotal;
disp(PLH,'Tplh(in picoseconds)=');
Tp=(PHL+PLH)/2;
disp(Tp,'total inverter delay(in picoseconds)=');//answer vary due to roundoff error

//b
Cload1=2.4+1.2;//in fermifarad
PHL1=Reff1*r1*Cload1;
disp(PHL1,'FO1 fall delay(in picoseconds)= ');

PLH1=Reff2*r2*Cload1;
disp(PLH1,'FO1 rise delay(in picoseconds)= ');
Tp1=2*(PHL1+PLH1);
disp(Tp1,'total delay(in picoseconds)=');

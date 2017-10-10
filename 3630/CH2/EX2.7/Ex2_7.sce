clc;
//ex2.7
//assume diode is ideal(Vf=0V)
Vs=10; //Volt
Rt=3030; //Ohm
IT=Vs/Rt;  //Ampere
//assume diode is practical(Vf=0.7V)
Vf=1.4; //Volt
Vs1=Vs-Vf; //Volt
IT1=Vs1/Rt; //Ampere
e=(-100*(IT1-IT))/IT1; //Percentage of error between two circuit current 
disp( 'Ampere',IT*1,"IT=");
disp( 'Ampere',IT1*1,"IT1=");
disp( '%',e*1,"Percentage Error="); //The answers vary due to round off error


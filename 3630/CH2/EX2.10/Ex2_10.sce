clc;
//ex2.10
Vss=10; //volt
Vf=0.7; //volt
R=100; //ohm
//total current through the circuit by using kirchhoff's voltage law
If=(Vss-Vf)/R; //Ampere
//power dissipation form diode for Vf and If
Pf=Vf*If; //Watt
PDmax=(20/100)*Pf+Pf; //Watt//forward power dissipation that is 20% greater than value of Pf
disp( 'mA',If*1000,"If=");
disp( 'mW',Pf*1000,"Pf=");
disp( 'mW',PDmax*1000,"PDmax="); 
 

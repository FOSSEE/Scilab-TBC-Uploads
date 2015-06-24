//Example 4.2: emf and % error 
clc;
clear;
close;
//given data :
l=50;// in cm
l1=70;// in cm
l2=65;// in cm
l3=43.5;// in cm
I=0.45;// in A
V=1.0183;// in V
V1=1.35;// in V
R=2;// in ohm
Vpl=V/l;// in V/cm
emf=Vpl*l1;
disp(emf,"(a). emf of the cell,(V) = ")
Vr=Vpl*l2;
P_error1=((V1-Vr)/Vr)*100;
disp(P_error1 ,"(b). % error (high),(%) = ")
Ir=(Vpl*l3)/R;// in A
P_error2=((I-Ir)/Ir)*100;
disp(P_error2,"(c). % error (high),(%) = ")

//Example 8.18.1: No load speed ,firing angle ,Power Factor and speed regulation
clc;
clear;
close;
format('v',6)
//given data :
Ra=0.075;//in ohm
alfa1=0;// in degree
alfa2=30;// in degree
VL_rms=480;// in volts
Ka_fi=0.3;// in V/rms
Vs_rms=round(VL_rms/sqrt(3));
Vm=sqrt(2)*Vs_rms;
Ea=round((3*sqrt(3)*Vm*cosd (alfa1))/%pi);
Ea1=((3*sqrt(3)*Vm*cosd(alfa2))/%pi);
Ia=(10/100)*160;// in A
N_0=(Ea-Ia*Ra)/Ka_fi;
N_30=(Ea1-Ia*Ra)/Ka_fi;
disp("part (a)")
disp(N_0,"No load speed at alfa=0 degree,(rpm) = ")
disp(N_30,"No load speed at alfa=30 degree,(rpm) = ")
disp("part (b)")
Ia=160;// in A
N=1800;// in rpm
Eg=540;// in volts
Ea=(Eg+(Ia*Ra));
alfa=(acosd((Ea*%pi)/(3*sqrt(3)*Vm)));
disp(alfa,"the firng angel,alfa(degree) = ")
disp("part (c)")
Is_rms=sqrt(2/3)*Ia;
Sva=3*Vs_rms*Is_rms;
PF=(Ea*Ia)/(Sva);
disp(PF,"Power Factor,PF(lagging) = ")
disp("part (d)")
Ra=0.075;//in ohm
Ia=160;// in A
Ia1=16;// in A
Eg=540;// in volts
Ka_fi=0.3;// in V/rms
N=1800;// in rpm
Ea=(Eg+(Ia*Ra));
Eg1=Ea-(Ia1*Ra);
N_0=Eg1/Ka_fi;
SR=((N_0-N)/N)*100;
disp(SR,"Speed Regulation,SR(%) = ")

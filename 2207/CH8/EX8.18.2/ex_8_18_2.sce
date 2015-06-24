//Example 8.18.2: Delay Angel of Armature,No load speed and speed regulation
clc;
clear;
close;
//given data :
format('v',5)
VL_rms=208;// in volts
Kv=1.2;// in V/A-rad/sec
Vs_rms=round(VL_rms/sqrt(3));
Vm=sqrt(2)*Vs_rms;
Rf=240; // in ohm
Ra=0.25;// in ohm
alfa_f=0;// in degree
V=280;// in volts
Twenty_HP=20*746;//in watt
Ia=Twenty_HP/V
Ef=round((3*sqrt(3)*Vm*cosd (alfa_f))/%pi);
N=1800;
w=(N*2*%pi)/60;
If=Ef/Rf;
Eg=Kv*w*If;
Ea=round(Eg+(Ia*Ra));
alfa_a=(acosd((Ea*%pi)/(3*sqrt(3)*Vm)));
disp("part (a)")
disp(alfa_a,"Delay Angel Of Armature,alfa_a(degree) = ")
disp("part (b)")
Ia1=(Ia*10)/100
Eg_noL=Ea-(Ia1*Ra);
w_0=(Eg_noL/(1.2*1.17));// rad/sec
N_0=(w_0*60)/(2*%pi);
disp(N_0,"NO load speed at alfa|_a,(rpm) = ")
// no load speed is calculated wrong in textbook
disp("part (c)")
SR=((N_0-N)/N)*100;
disp(SR,"Speed Regulation,SR(%) = ")
// speed regulation is calculated wrong in the textbook

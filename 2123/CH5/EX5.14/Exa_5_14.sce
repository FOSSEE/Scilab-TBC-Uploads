//Example No. 5.14
clc;
clear;
close;
format('v',7);

//Given Data : 
V=400;//V
Ra=0.3//ohm
Rf=250;//ohm
Ia=50;//A
Kv=1.3;//V/A-rad/s
N=1200;//rpm
alfa_f=0;
Vf=3*sqrt(3)*V*sqrt(2)/sqrt(3)/%pi*cosd(alfa_f);//V
If=Vf/Rf;//A
Eb=Kv*If*2*%pi*N/60;//V
Va=Eb+Ia*Ra;//V
alfa_a=acosd(Va/3/sqrt(3)/V/sqrt(2)*sqrt(3)*%pi);//degree
disp(alfa_a,"Fringe angle of converter in degree : ");

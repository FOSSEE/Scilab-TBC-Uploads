//Exa 7.6
clc;
clear;
close;
format('v',5);
//Given data :
Ph=3;//phase
r=10.4/2;//mm
r=r/10;//in cm
d=2.5;//meter
d=d*100;//in cm
t=21;//degree C
T=t+273;//K
b=73.6;//cm-Hg
mo=0.85; 
mv_l=0.7;
mv_g=0.8;
go=21.21;//kV/cm : assumed
del=3.92*b/T;//Air density factor
//Formula : Vdo=go*del*mo*r*log(d*100/r);//kV
Vdo=go*del*mo*r*log(d/r);//kV
Vdo_line=sqrt(3)*Vdo;//kV
Vvo=go*del*mv_l*r*(1+.3/sqrt(del*r))*log(d/r);//kV
Vvo_line_local=Vvo*sqrt(3);//kV(rms)
disp(Vvo_line_local,"Line to line visual critical voltage for local corona(kV-rms)  : ")
Vvo_line_general=Vvo_line_local*mv_g/mv_l;//kV(rms)
disp(Vvo_line_general,"Line to line visual critical voltage for general corona(kV-rms)  : ")
//Note : Answer in the book is not accurate.

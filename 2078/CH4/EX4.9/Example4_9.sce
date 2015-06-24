//Exa 4.9
clc;
clear;
close;
//Given data :
r=4/2;//cm
rdash=0.7788*r;//cm
d=300;//cm
d3=6*100;//cm
LA=0.2*[log(d/rdash)+1/2*log(2)-%i*0.866*log(2)];//mH
disp(LA,"Inductance per km of phase1(mH)");
LB=0.2*log(d/rdash);//mH
disp(LB,"Inductance per km of phase2(mH)");
LC=0.2*[log(d/rdash)+1/2*log(2)+%i*0.866*log(2)];//mH
disp(LC,"Inductance per km of phase3(mH)");

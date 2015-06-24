//example 1.8
clc; funcprot(0);
Cv=7.061;
tc=15*24*60;
H=2.8/2*1000;
Scmax=87.5; // consolidation
Tc=Cv*tc/H^2;
tv=31.6*24*60;
Tv=Cv*tv/H^2;
//from figure 1.28
Sct=Scmax*0.36;
disp(Sct,"consolidation in 31.6 days in mm");


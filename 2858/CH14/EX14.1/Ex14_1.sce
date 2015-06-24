//example 14.1
clc; funcprot(0);
Cc=0.28;
Hc=6;
eo=0.9;
Cv=0.36;
H=3;
t=9;
sigmao=210;
sigmap=115; //deltasigmap
Sc=Cc*Hc/(1+eo)*log10((sigmao+sigmap)/sigmao);
disp(Sc*1000,"primary consolidation in mm");
Tv=Cv*t/H^2;
//from table
k=1.8; //constant
sf=k*sigmap;
disp(sf,"deltasigmaf in kN/m^2");


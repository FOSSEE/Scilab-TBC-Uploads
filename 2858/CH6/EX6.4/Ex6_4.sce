//example 6.4
clc; funcprot(0);
Cc=0.28;
Hc=18*12;
e0=0.9;
sigmao=11*100+40*(121.5-64)+18/2*(118-62.4);
H2=5+40+18;
H1=5+40;
qo=3567;
//from table
IaH2=0.21;
IaH1=0.225;
Dsigma=qo*((H2*IaH2-H1*IaH1)/(H2-H1))*4;
Scp=Cc*Hc/(1+e0)*log10(sigmao/sigmao+Dsigma/sigmao);
disp(Scp,"settlement in inches");


//example 14.3
clc(); funcprot(0);
Cc=0.31;
Hc=15;//ft
eo=1.1;
n=10;
Uv=0.09;
sigmao=1000;
deltasigma=2000; // deltasigmap+deltasigmaf
Sc=Cc*Hc/(1+eo)*log10((sigmao+deltasigma)/sigmao);
disp(Sc,"primary consolidation in ft");
m=n^2/(n^2-1)*log(n)-(3*n^2-1)/4/n^2;
A=2/m;
Ur=(0.096-1/A*(1-exp(-A*0.096)))/0.192;
Uvf=1-(1-Ur)*(1-Uv);
Sc30=Sc*Uvf*12; //settlement after 30 days
disp(Sc30,"settlement after 30 days in inch");


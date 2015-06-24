clc
clear

P1=9;               //in bar
P2=1;               //in bar
T2=115+273;         //in K
m=1.8;              //in kg
m1=0.2;             //in kg
x1=m/(m+m1);        //Dryness fraction

//Now from steam table
Hf=742.8;           //in kJ/kg
Hfg=2031.1;         //in kJ/kg
Hg=2675.5;          //in kJ/kg
Tsat=99+273;        //in K
Tsup=115+273;       //in K
Cps=2.1;            //in kJ/kg K
H2=Hg+(Cps*(Tsup-Tsat));
x2=(H2-Hf)/Hfg;
x=x1*x2;
printf('The dryness fraction: %2.4f kJ',x);
printf('\n');

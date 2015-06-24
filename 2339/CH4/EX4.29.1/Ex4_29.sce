clc
clear

//Combined seperating and throttling calorimeter
Ms=5;               //in kg
Mw=0.5;             //in kg
Cps=2.1;            //in kJ/kg K
Man=166.8;          //in mm of Hg
Bar=733.6;          //in mm of Hg

x1=Ms/(Ms+Mw);
P=Man+Bar;
P_bar=(1.01325*P)/760;      //Pressure in bar

//From steam table
Hf1=742.8;              //in kJ/kg
Hfg1=2031.1;            //in kJ/kg
Tsat=104.8+273;         //in K
Tsup=110.3+273;         //in K
Hg=2683.5;              //in kJ/kg

H2=Hg+(Cps*(Tsup-Tsat));
x2=(H2-Hf1)/Hfg1;
x=x1*x2;
printf('The dryness fraction of steam: %2.3f',x);
printf('\n');

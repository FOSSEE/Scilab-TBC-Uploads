clc
clear

Ms=20;          //in kg
Mw=2;           //in kg
Cps=2.1;        //in kJ/kg K
x1=Ms/(Ms+Mw);  //Dryness fraction

//At 12 bar pressure
Hf1=798.6;          //in kJ/kg
Hfg1=1986.2;        //in kJ/kg

//At 1 bar pressure
Hg2=2675.5;         //in kJ/kg
Tsup=110+273;           //in K
Tsat=99+273;            //in K

//For throttling, H1=H2
H2=Hg2+(Cps*(Tsup-Tsat));
x2=(H2-Hf1)/Hfg1;

x=x1*x2;
printf('Dryness fraction of steam: %2.4f kJ',x);
printf('\n');

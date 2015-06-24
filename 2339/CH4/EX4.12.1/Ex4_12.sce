clc
clear

//Combined Seperating and Throttling Calorimeter
m1=2;       //mass of water seperated in kg
m=20.5;     //Steam discharged from calorimeter in kg
mt=m1+m;    //Steam inlet in kg

x1=m/(mt);      //Dryness fraction

//At 12 bar pressure
Hf=798.6;       //in kJ/kg
Hfg=1986.2;     //in kJ/kg

P_bar=760;          //Pressure in mm
P_fin=5;            //Pressure in mm
P=(P_bar+P_fin)*1.01325/P_bar;      //Absolute Pressure

//Now at 1.02 bar
Cp=2.2;         //in kJ/kg K
Hg=2676.34;         //in kJ/kg
Tsat=99.66+273;     //in K
Tsup=110+273;       //in K
H2=Hg+(Cp*(Tsup-Tsat));
x2=(H2-Hf)/Hfg;
x=x1*x2;
printf('The Dryness Fraction: %3.3f',x);
printf('\n');

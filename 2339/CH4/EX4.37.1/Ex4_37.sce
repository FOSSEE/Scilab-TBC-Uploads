clc
clear

m1=0.45;                //in kg
m=7;                    //in kg
P1=12;                  //in bar
Bar=760;                //mm of Hg Barometer reading
Man=180;                //mm of Hg Manometer Reading
Cps=2.1;                //in kJ/kg K
P=Bar+Man;
P2=(P*1.01325)/760;     //Pressure in bar
Tsup=140+273;             //in K
x1=m/(m+m1);

//Now at 12 bar pressure
Hf=798.6;               //in kJ/kg
Hfg=1986.2;             //in kJ/kg

//At 1.25 bar pressure
Hg=2685.3;              //in kJ/kg
Tsat=106+273;           //in K
//For throttling H1=H2
H2=Hg+(Cps*(Tsup-Tsat));
x2=(H2-Hf)/Hfg;

x=x1*x2;
printf('The dryness fraction: %2.3f ',x);
printf('\n');

clc
clear

P1=11;              //in bar
P2=1.1;             //in bar
T2=130+273;         //in K
Cps=2.1;            //in kJ/kg K

//At 11 bar
Hf1=781.3;          //in kJ/kg
Hfg1=2000.4;        //in kJ/kg

//At 1.1 bar
Hg2=2679.7;         //in kJ/kg
Tsat=102.3+273;     //in K
Tsup=130+273;

//Now for throttling process, H1=H2
H2=Hg2+(Cps*(Tsup-Tsat));
x=((H2-Hf1)*100)/Hfg1;
printf('The dryness fraction of steam: %2.1f',x);
printf('\n');

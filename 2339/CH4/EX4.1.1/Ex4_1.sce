clc
clear

//Case 1
Vg=0.132;
SV=0.12;        //Specific Volume
//As SV is less than Vg, steam is wet

x=SV/Vg;

printf('\n For Case 1 \n');
printf('Part of wet steam: %2.2f',x);
printf('\n');

//Case 2
T=200;
Tsat=179.9;     //Satuaration Temperature
//Steam is superheated as T > Tsat
D_sh=T-Tsat;

printf('\n For Case 2 \n');
printf('Degree of Superheat: %2.1f C',D_sh);
printf('\n');

//Case 3
P=20;       //Pressure in bars
Hf=908.8;       //kJ/kg
Hfg=1890.7;     //kJ/kg
Hg=2799.5;      //kJ/kg
H=2650;

//Steam is wet as Specific enthalpy is less than Hg

x=(H-Hf)/Hfg;

printf('\n For Case 3 \n');
printf('Part of wet steam: %2.2f',x);
printf('\n');

//Case 4
T=150;      //in Celcius
SV=0.3928;  //Specific Volume in m^3/kg
Vg=0.3928;  //in m^3/kg

printf('\n For Case 4 \n');
printf('As SV=Vg, steam is dry saturated');
printf('\n');

//Case 5
P=10;       //in bars
S=5.697;
Sf=2.319;
Sfg=4.448;
Sg=6.623;
//As Sample specific entropy is less than Sg and more than Sf, steam is wet

x=(S-Sf)/Sfg;
printf('\n For Case 5 \n');
printf('Part of wet steam: %2.1f',x);
printf('\n');

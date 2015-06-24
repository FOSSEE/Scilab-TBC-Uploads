clc
clear

//Heat lost by Steam=Heat gained by water and calorimeter

ms=2;               //in kg
Hf1=697.2;          //in kJ/kg
Hfg1=2066.3;        //in kJ/kg
Hf2=146.7;          //in kJ/kg
T2=35;              //in Celcius
T1=15;              //in Celcius
mg=56;              //in kg
Cpw=4.187;          //in kJ/kg K
H_gained=mg*Cpw*(T2-T1);
x=(((H_gained)/2)+(Hf2-Hf1))/Hfg1;
printf('The dryness fraction is %2.2f ',x);
printf('\n');

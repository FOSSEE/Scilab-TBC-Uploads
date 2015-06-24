clear;
clc;
disp('Example 10.5');

//aim : To determine 
// the flow rate of cooling water

//Given values
P=24;//pressure, [kN/m^2]
ms_dot=1.8;//steam condense rate,[tonne/h]
x=.98;//dryness fraction
T1=21;//entrance temperature of cooling water,[C]
T2=57;//outlet temperature of cooling water,[C]

//solution
//at 24 kN/m^2, for steam
hfg=2616.8;//[kJ/kg]
hf1=268.2;//[kJ/kg]
//hence
h1=hf1+x*(hfg-hf1);//[kJ/kg]

//for cooling water
hf3=238.6;//[kJ/kg]
hf2=88.1;//[kJ/kg]

//using equation [3]
//ms_dot*(hf3-hf2)=mw_dot*(h1-hf1),so
mw_dot=ms_dot*(h1-hf1)/(hf3-hf2);//[tonne/h]
disp('tonne/h',mw_dot,'The flow rate of the cooling water is =')

//End

clear;
clc;
disp('Example 4.15');

//  aim : To determine
//  the dryness fraction of the steam at 2.2 MN/m^2

//  Given values
P1 = 2.2;//  [MN/m^2]
P2 = .13;//  [MN/m^2]
t2 = 112;//  [C]
tf2 = 150;//  temperature, [C]

// solution
// from steam table, at 2.2 MN/m^2
//  saturated steam at 2 MN/m^2 Pressure
hf1 = 931;//  [kJ/kg]
hfg1 = 1870;//  [kJ/kg]
hg1 = 2801;//  [kJ/kg]

// for superheated steam
//  at .1 MN/m^2
hg2 = 2675;//  [kJ/kg]
hg2_150 = 2777;// specific enthalpy at 150 C, [kJ/kg]
tf2 = 99.6;//  saturation temperature, [C]

// at .5 MN/m^2
hg3 = 2693;//  [kJ/kg]
hg3_150 = 2773;// specific enthalpy at 150 C, [kJ/kg]
tf3 = 111.4;//  saturation temperature, [C]

Table_P_h1 = [[.1,.5];[hg2,hg3]];// where, P in MN/m^2 and h in [kJ/kg]
hg = interpln(Table_P_h1,.13);//  specific entahlpy at .13 MN/m^2, [kJ/kg]

Table_P_h2 = [[.1,.5];[hg2_150,hg3_150]];//  where, P in MN/m^2 and h in [kJ/kg]
hg_150 = interpln(Table_P_h2,.13);//  specific entahlpy at .13 MN/m^2 and 150 C, [kJ/kg]

Table_P_tf = [[.1,.5];[tf2,tf3]];// where, P in MN/m^2 and h in [kJ/kg]
tf = interpln(Table_P_tf,.13);//  saturation temperature, [C]

//  hence
h2 = hg+(hg_150-hg)/(t2-tf)/(tf2-tf);//  specific enthalpy at .13 MN/m^2 and 112 C, [kJ/kg]

// now since process is throttling so h2=h1
// and h1 = hf1+x1*hfg1, so
x1 = (h2-hf1)/hfg1;// dryness fraction
mprintf(' \n The dryness fraction of steam is  =  %f \n',x1);

// There is a calculation mistake in book so answer is not matching

//  End

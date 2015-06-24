//Exa 2.56
clc;
clear;
close;
//Given data :
format('v',5);
Output=15;//in H.P.
Output=15*735.5;//in watts
Vl=400;//in volt
ISCat200=40;//in Ampere(at 200 volt)
Efficiency=0.88;//unitless
cosfi=0.85;//power factor
ISCat400=ISCat200*(400/200);//in Ampere(at 400 volt)
Input=Output/Efficiency;//in watts
Ifl=Input/(sqrt(3)*Vl*cosfi);//in Ampere
//starting line current with star delta starter
Is=ISCat400/3;//in Ampere
Ratio=Is/Ifl;//ratio of starting current to full load current
disp(Ratio,"Ratio of line current at starting to full load current :");
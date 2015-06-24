clc;clear;
//Example 15.2

//given data
E=200;//energy released per fission in MeV
e=1.6*10^-19;//the charge on electron in C
Na=6.02*10^26;//Avgraodo no. in 1/kg mole

//calculations
CE=E*e*10^6;//conversion in J
RF=1/CE;
disp(RF,'fission rate of one watt in fissions/second');
Ekg=CE*Na/235;
disp(Ekg,'Energy realeased in complete fission of 1 kg in J')
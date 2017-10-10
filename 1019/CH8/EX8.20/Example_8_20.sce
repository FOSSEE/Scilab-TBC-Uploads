//Example 8.20
clear;
clc;

//Given
T1=313;//1st temperature in K
T2=333;//2nd temperature in K
KT1=0.86;//Value of equillibrium constant at temperature T1
KT2=0.35;//Value of equillibrium constant at temperature T2
R=8.314;//gas constant in J K^-1 mol^-1

//To determine the value of delGo,delHo and delSo
delHo=(R*T1*T2*log(KT2/KT1))/(T2-T1);//delHo in J mol^-1
delGo313=-R*T1*log(KT1);//value of delGo at T1 in J mol^-1
delGo333=-R*T2*log(KT2);//value of delGo at T2 in J mol^-1
delSo313=(delHo-delGo313)/T1;//value of delSo at T1 in J K^-1 mol^-1
delSo333=(delHo-delGo333)/T2;//value of delSo at T2 in J K^-1 mol^-1
mprintf('delHo = %f J mol^-1',delHo);
mprintf('\n delGo at 313 K = %f J mol^-1',delGo313);
mprintf('\n delGo at 333 K = %f J mol^-1',delGo333);
mprintf('\n delSo at 313 K = %f J K^-1 mol^-1',delSo313);
mprintf('\n delSo at 333 K = %f J K^-1 mol^-1',delSo333);

//end
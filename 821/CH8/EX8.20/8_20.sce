R=1.987;//universal gas constant//
T1=313;//initial temperature in kelvin//
T2=333;//Final temperature in kelvin//
t1=15;//time for 20% reaction at 313K in mins//
t2=3;//time for 20%reaction at 333K in mins//
K=t1/t2;//ratio of K2/K1//
E=(2.303*R*T1*T2*log10(K))/(1000*(T2-T1));//energy of activation in Kcal per mol//
printf('Energy of activation=E=%fKcal per mol',E);

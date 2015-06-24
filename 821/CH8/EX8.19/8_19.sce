R=1.987;//universal gas constant//
T1=350;//initial temperature in kelvin//
T2=360;//Final temperature in kelvin//
E=40000;//energy of activation in cal per mol//
K=10^(E*((T2-T1)/(T1*T2))/(2.303*R));//ratio of v2/v1//
printf('The ratio of V2 and V1 is K=V2/V1=%f',K);

//Ex13.2.1.;Peltier heats absorbed and rejected
//peltier coefficients at these junctions are aplha_p_1-2=alpha_s_1-2*T
//Let A=alpha_s_1-2 at 373 k=55*10^-6 v/degree_k and B=alpha_s_1-2 at 273 k=50*10^-6 v/degree_k
A=(55*10^-6);
B=(50*10^-6);
T1=373;//k
T2=273;//k
I=10*10^-3;//current;unit=Ampere
alpha_p_1_2_at_373k=A*T1;
alpha_p_1_2_at_273k=B*T2;
printf(" alpha_p_1_2_at_373k=%f W/amp \n alpha_p_1_2_at_273k=%f W/amp",alpha_p_1_2_at_373k=A*T1,alpha_p_1_2_at_273k=B*T2);
//Peltier heats absorned and rejected to be
q2_peltier=alpha_p_1_2_at_373k*I;
q1_peltier=alpha_p_1_2_at_273k*I;
printf("\n q2_peltier=%f w \n q1_peltier=%f W",q2_peltier,q1_peltier);
c=q2_peltier-q1_peltier;
printf("\n If no other heat transfer were involved,the difference between these vaues,");
printf("\n %f-%f=%f W,would be supplied as electric power",q2_peltier,q1_peltier,c);

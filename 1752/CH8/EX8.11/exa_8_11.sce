//Exa 8.11
clc;
clear;
close;
format('v',13)
//given data
t_hi=135;// in degree C
t_ci=20;// in degree C
t_ho=65;// in degree C
t_co=50;// in degree C
// Energy balance  Mh*Cph*(t_hi-t_ho) = Mc*Cpc*(t_co-t_ci)
// C =C_min/C_max = Mh*Cph/( Mc*Cpc)
C= (t_co-t_ci)/(t_hi-t_ho);
epsilon=(t_hi-t_ho)/(t_hi-t_ci);
// Also epsilon = epsilon_parallel = (1-exp(-NTU*(1+C)))/(1+C)
NTU= -log(1-epsilon*(1+C))/(1+C);
// if the existing heat exchanger is to be used as counter flow mode, its NTU will not change, i.e.
epsilon_c= (1-exp(-NTU*(1-C)))/((1-C*exp(-NTU*(1-C))));
// Exit temperature
// (i) Hot fluid
t_ho=t_hi-epsilon_c*(t_hi-t_ci);// in degree C
disp(t_ho,"Exit temperature for hot fluid in degree C")

//(ii) Cold fluid
t_co= t_ci+epsilon_c*C*(t_hi-t_ci);
disp(t_co,"Exit temperature for cold fluid in degree C")

// (iii) // If the parallel flow heat exchanger is too long, then body fluid will have common outlet temperature (t)
// From MCp_h*(t_hi-t) = MCp_c*(t-t_ci)

t=(C*t_hi+t_ci)/(1+C);
disp(t,"The minimum temperature to which the oil may be cooled by increasing the tube length with parallel flow operation, in degree C ")

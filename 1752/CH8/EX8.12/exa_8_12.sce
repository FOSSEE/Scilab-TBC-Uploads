//Exa 8.12
clc;
clear;
close;
format('v',13)
//given data
t_hi=78;// in degree C
t_ci=23;// in degree C
t_ho=65;// in degree C
t_co=36;// in degree C
// Energy balance  Mh*Cph*(t_hi-t_ho) = Mc*Cpc*(t_co-t_ci)
// C =C_min/C_max = Mh*Cph/( Mc*Cpc)
C= (t_co-t_ci)/(t_hi-t_ho);
epsilon=(t_hi-t_ho)/(t_hi-t_ci);
// Formula epsilon = (1-exp(-N*(1+C)))/(1+C)
N= -log(1-epsilon*(1+C))/(1+C);
// When flow rates of both fluids are doubled , the deat capacity ratio will not change, i.e.
// C=1
//  MCp_new =2* MCp_old
// N=U*A/C_min=N/2
N=N/2;
epsilon=(1-exp(-N*(1+C)))/(1+C);
// exit temperature
t_ho=t_hi-epsilon*(t_hi-t_ci);// in degree C
t_co= t_ci+epsilon*(t_hi-t_ci);
disp("Exit temperature  in degree C : "+string(t_ho)+" and "+string(t_co));

// Note: Answer in the book is wrong due to put wrong value of t_ci in second last line
clc
//Example 8.1
// First critical speed

//------------------------------------------------------------------------------
//Given Data:

m1=220
delta1=0.03e-3
m2=440
delta2=0.008e-3

res1= mopen(TMPDIR+'1_first_critical_speed.txt','wt')

Sigma_w_delta=(m1*delta1)+(m2*delta2)
mfprintf(res1,'Sigma_w_delta=(m1*delta1)+(m2*delta2) = %0.5f\n',Sigma_w_delta)

Sigma_w_delta2=(m1* delta1^2)+(m2* delta2^2)
mfprintf(res1,'Sigma_w_delta2 = %0.9f m^2\n',Sigma_w_delta2)

wc=sqrt((9.81*Sigma_w_delta)/(Sigma_w_delta2))

mfprintf(res1,'wc= %0.1f rad/s',wc)

mclose(res1);
editor(TMPDIR+'1_first_critical_speed.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------
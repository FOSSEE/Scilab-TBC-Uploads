clc
//Example 8.6
// Rayleigh method

//------------------------------------------------------------------------------
//Given Data:

W1=675
a11=1.482e-8
W2=300
a22=5.799e-8
a21=3.211e-8
a12=a21

res6= mopen(TMPDIR+'6_rayleigh_method.txt','wt')

delta1=(W1*a11)+(W2*a12)
mfprintf(res6,'delta1 = %0.5f rad/s\n',delta1)

delta2=(W2*a22)+(W1*a21)
mfprintf(res6,'delta2 = %0.5f rad/s\n',delta2)

Sigma_w_delta=(W1*delta1)+(W2*delta2)

Sigma_w_delta2=(W1* delta1^2)+(W2* delta2^2)

wc=sqrt((9.81*Sigma_w_delta)/(Sigma_w_delta2))

mfprintf(res6,'wc= %0.1f rad/s\n',wc)

Nc=(wc*60)/(2*%pi)
mfprintf(res6,'Nc= %0.1f rad/s',Nc)

mclose(res6);
editor(TMPDIR+'6_rayleigh_method.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------
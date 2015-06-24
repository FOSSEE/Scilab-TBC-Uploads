// Chapter 9_The bipolar transistor
//Caption_Gain factors
//Ex_2//page 372
alpha_T=0.9967
Db=10
tau_bo=10^-7
xbLb=abs(acosh(alpha_T))   //xB/Lb where LB is the length
Lb=(Db*tau_bo)^0.5
xb=xbLb*Lb*10^4
printf('Base width required to achieve the given base transport factor is %1.3f micrometer',xb)

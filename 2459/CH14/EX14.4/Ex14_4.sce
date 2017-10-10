//chapter 14
//example 14.4
//page 302

gain_abs=30
n=5

Ap1=10*log10(gain_abs) // db
Ap_tot=Ap1*n
Ap_f=Ap_tot-10 // db

printf("total power gain = %.3f db \n",Ap_tot)
printf("power gain with negative feedback = %.3f db \n",Ap_f)

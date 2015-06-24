clc
//Example 12.1
//Calculate the eta and slip velocity
ratio_Q=10//dimentionless (ratio of Qg to Ql)
x=3.5/ratio_Q//dimentionless
eta=1/(1+x)//dimentionless
printf("Eta = %f\n",eta);
Vl=2.06//ft/s
Vl_avg=Vl/(1-eta)//ft/s
Vg_avg=ratio_Q*Vl/eta//ft/s
V_slip=Vg_avg-Vl_avg//ft/s
printf("The slip velocity is %f ft/s",V_slip);
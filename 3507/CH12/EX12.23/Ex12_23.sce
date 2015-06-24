//chapter12
//example12.23
//page258

gain_beta=40
I_C1=2 // mA
t1=25 // degrees
t2=55 // degrees
I_CBO1=5d-3 // mA

// for I_CBO=5 micro ampere at 25 degrees
I_CEO1=(1+gain_beta)*I_CBO1

I_CBO2=I_CBO1*2^((t2-t1)/10) // since it doubles every 10 degrees. So for t2-t1, it becomes 2^((t2-t1)/10) times.
I_CEO2=(1+gain_beta)*I_CBO2
I_C2=I_CEO2+I_C1
I_C_change=100*(I_C2-I_C1)/I_C1

// for I_CBO=0.1 micro ampere at 25 degrees
t1_dash=25 // degrees
t2_dash=55 // degrees
I_CBO1_dash=0.1d-3 // mA
I_C1_dash=2 // mA

I_CBO2_dash=I_CBO1_dash*2^((t2-t1)/10) // since it doubles every 10 degrees. So for t2-t1, it becomes 2^((t2-t1)/10) times.
I_CEO2_dash=(1+gain_beta)*I_CBO2_dash
I_C2_dash=I_CEO2_dash+I_C1_dash
I_C_change_dash=100*(I_C2_dash-I_C1_dash)/I_C1_dash

printf("collector cutoff current = %.3f mA \n \n",I_CEO1)
printf("percent change in zero signal current given that \nI_CBO=5 micro ampere at 25 degree is = %.3f percent \n \n",I_C_change)
printf("percent change in zero signal current given that \nI_CBO=0.01 micro ampere at 25 degree is = %.3f percent \n",I_C_change_dash)

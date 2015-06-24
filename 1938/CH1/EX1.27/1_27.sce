clc,clear
printf('Example 1.27\n\n')

V=400
P=6 //Poles
A=P  //For lap wound
output_power=250*10^3
R_sh=200 //shunt field circuit resistance
Z=720 //number of lap wound conductors

theta_m=2.5 //brush lead angle in degree mechanical
I_L=output_power/V
V_sh=V

I_sh=V_sh/R_sh //Current through shunt field circuit resistance
I_a=I_L+I_sh //armature currrent
I=I_a/P

//Part(i)
amp_turns_PP_d=Z*I*theta_m/360//demagnetising ampere turns per pole
//Part(ii)
amp_turns_PP_c=Z*I*(1/(2*P)-theta_m/360) //cross-magnetising ampere turns per pole

printf('(i)  De-magnetising ampere-turns per pole is %.1f',amp_turns_PP_d)
printf('\n(ii) Cross-magnetising ampere-turns per pole is %.1f',amp_turns_PP_c)

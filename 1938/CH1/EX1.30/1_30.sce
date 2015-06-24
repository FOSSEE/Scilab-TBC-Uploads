clc,clear
printf('Example 1.30\n\n')
printf('The difference in answer occured because I is approximated to 16 in last 2 steps in book\n\n')

P_input=7.46*10^3
V=230
Pole=8
Z=188 //number of armature consuctors
I_L=P_input/V
theta_m=7.5  //brush lead angle in degree mechanical

A=2 // assumed wave wound because of low-current and high voltage
I=I_L/A

//Part(i)
amp_turns_PP_d=Z*I*theta_m/360  //De-magnetising ampere-turns per pole
//Part(ii)
amp_turns_PP_c=Z*I*(1/(2*Pole)-theta_m/360) //Cross-magnetising ampere-turns per pole

printf('De-magnetising ampere-turns per pole is %.2f',amp_turns_PP_d)
printf('\nCross-magnetising ampere-turns per pole is %.2f',amp_turns_PP_c)

clc,clear
printf('Example 1.5\n\n')

Pole=4
Z=480 //No of armature conductors
I_a=144
I=I_a/2  //For wave wound
theta_m=10  //lead angle in DEGREES

amp_turns_PP_d=Z*I*theta_m/360  //demagnetising Ampere-turns per pole
amp_turns_PP_c=Z*I*(1/(2*Pole)-theta_m/360) //cross-magnetising Ampere-turns per pole

printf('De-magnetising ampere-turns per pole is %.0f',amp_turns_PP_d)
printf('\nCross-magnetising ampere-turns per pole is %.0f',amp_turns_PP_c)

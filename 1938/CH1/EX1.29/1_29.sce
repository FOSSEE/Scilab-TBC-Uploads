clc,clear
printf('Example 1.29\n\n')

P=8 //Poles
A=2 //Wave wound armature
Z=480 //number of armature conductors
I_a=200
I=I_a/A

//Part(i)
theta_m=0 //Geometric nuetral axis
amp_turns_PP_d=Z*I*theta_m/360    //De-magnetising ampere-turns per pole
amp_turns_PP_c=Z*I*(1/(2*P)-theta_m/360) //Cross-magnetising ampere-turns per pole
printf('Part(i)\nDe-magnetising ampere-turns per pole is %.0f',amp_turns_PP_d)
printf('\nCross-magnetising ampere-turns per pole is %.0f\n\n',amp_turns_PP_c)

//Part(ii)
theta_e2=6 //angle shift of brushes in degrees electrical
theta_m2=theta_e2/(P/2) //angle shift of brushes in degrees mechanical
amp_turns_PP_d2=Z*I*theta_m2/360   //De-magnetising ampere-turns per pole
amp_turns_PP_c2=Z*I*(1/(2*P)-theta_m2/360) //Cross-magnetising ampere-turns per pole
printf('Part(ii)\nDe-magnetising ampere-turns per pole is %.0f',amp_turns_PP_d2)
printf('\nCross-magnetising ampere-turns per pole is %.0f',amp_turns_PP_c2)

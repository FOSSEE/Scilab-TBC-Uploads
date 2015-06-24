clc,clear
printf('Example 1.20\n\n')

I_a=750 //full load current 
Pole=6 
A=Pole //lap winding
I=I_a/A  //Full-load current per path
Z=900 //no of conductors
lambda=1.4  //leakage coefficient
theta_e=21 //lead angle in degrees electrical
theta_m=theta_e/(Pole/2)  //lead angle in degrees mechanical

amp_turns_PP_d=Z*I*theta_m/360  //demagnetising ampere turns per pole
amp_turns_PP_c=Z*I*(1/(2*Pole)-theta_m/360)  //cross-magnetising ampere turns per pole

balance_turns=amp_turns_PP_d*lambda/I_a //series turns required to balance demagnetising component
printf('(i)  De-magnetising ampere-turns per pole is %.1f',amp_turns_PP_d)
printf('\n(ii) Cross-magnetising ampere-turns per pole is %.1f',amp_turns_PP_c)
printf('\n(iii)Turns required to balance demagnetising component is %.0f',floor(balance_turns))

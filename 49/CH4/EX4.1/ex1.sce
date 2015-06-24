//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Resistance strain gage
// Example 1// Page 163

disp("Rg=120")
disp("E=200 *10^9")
disp("dL=3 ")
disp("dp=0.3")
disp("v=0.3 ")
Rg=120   //('enter the resistance of strain gage=:')
E=200 *10^9   // given
dL=3  //('enter the percent change in the length of nthe rod due to loading=:')
dp=0.3  //('enter the corresponding change in the resistivity of strain gage=:')
v=0.3   // poissons ratio
e=dL/100;
dp_p=dp/100
disp("dR_R=dp_p+e*(1+2*v)")
dR_R=dp_p+e*(1+2*v)
Sg=dR_R/e;
printf('So the gage factor is %fd \n',Sg)
u_dr=0.02   //('enter the uncertainty in resistance=:')
u_sig=E*u_dr/(Rg*Sg)*10^-6;
printf(' Stress uncertainty is %1.1f MPa\n',u_sig)
// To calculate strain uncertainty
u_e=u_dr/(Rg*Sg)
printf('Strain uncertainty is %fd\n',u_e)

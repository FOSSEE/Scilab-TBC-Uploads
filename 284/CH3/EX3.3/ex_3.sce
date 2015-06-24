// Chapter 3_The Semiconductor in Equilibrium
//Caption_Intrinsic carrier concentration
//Ex_3//page 90
T1=300;    //Given temperature in kelvin
T2=450;
Nc1=4.7*(10^17)  //effective density of state function in cm^-3
Nv1=7*(10^18)
Eg=1.42      //bandgap energy in eV
kT=0.0259*(T2/T1);
ni1=(Nc1*Nv1*exp((-Eg)/0.0259))^0.5
ni2=(Nc1*Nv1*(T2/T1)^3*exp(-Eg/kT))^0.5
printf('The intrinsic carrier concentration in gallium arsenide at T=300k is %fd per cm cube and at 450k is %fd //cm^3 ', ni1, ni2)


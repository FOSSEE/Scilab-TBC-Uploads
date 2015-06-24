//Ex12_18 PG-12.18
clc
clear
printf(" When modulation index m=100%% ")
m=1;
disp(" Now Pdsbfc=1.5*Pc or Pdsbfc/Pc=1.5")
Pc=poly(0,'Pc')
Pdsbfc=Pc*(1+m^2/2);//power required for double sideband with full carrier transmission
Pssb=Pc*m^2/4;
%P=(Pdsbfc-Pssb)/Pdsbfc*100
x=horner(%P,1)
printf("  %%Power saving %%P :%f %%\n\n",x)

disp(" When modulation index m=50%% ")
m=0.5;
Pdsbfc=Pc*(1+m^2/2);//power required for double sideband with full carrier transmission
printf("  Now Pdsbfc=Pc*(1+m^2/2) \n  Pdsbfc=1.125*Pc  or Pdsbfc/Pc=1.125\n")
Pssb=Pc*m^2/4;
%P=(Pdsbfc-Pssb)/Pdsbfc*100
x=horner(%P,1)
printf("  %%Power saving %%P :%f %%",x)


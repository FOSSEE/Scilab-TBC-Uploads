clc;
vdr=2; // percentage full load voltage drop in resistance
vdx=4; // percentage full load voltage drop in leakage reactance
// full load ohmic losses are equal to 0.02*VA rating of transformer which is equal to iron  losses
n=100/(1+(vdr/100)+(vdr/100)); 
printf('Efficiency on full load at unity p.f is %f percent\n',n);
// maximum voltage drop means voltage regulation is also maximum
pf=vdr/sqrt(vdr^2+vdx^2); 
printf('Full load power factor at which voltage regulation is maximum is %f lagging\n',pf);
pf=vdx/sqrt(vdr^2+vdx^2); 
printf(' load power factor at which voltage regulation is zero is %f leading',pf);

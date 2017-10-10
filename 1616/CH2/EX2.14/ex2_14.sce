//ex2.14  find the power delivered to the load and the peak voltage at the load-end of the line

ZL=50;
Z0=50+%i*50;
Tl=(ZL-Z0)/(ZL+Z0);
VSWR=(1+abs(Tl))/(1-abs(Tl));
disp('VSWR = '+string(VSWR));
vmax=50;
PL=0.5*vmax^2/(VSWR*real(Z0));
RL=50;
VL=sqrt(PL*RL*2);
disp('Peak voltage at the load = '+string(VL)+' V','Power delivered to the load = '+string(PL)+' W');

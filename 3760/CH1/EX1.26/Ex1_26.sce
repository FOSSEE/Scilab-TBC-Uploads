clc;
// subscripts 1 and 2 are used to refer 50 hz and 60 hz quantity respectively
// voltage and current is same for both the cases
s=1.6; // Steinmetz's coefficient
poh1=1.6; // percentage ohmic losses
ph1=0.9; // percentage hysteresis losses
pe1=0.6; // percentage eddy current losses
f1=50; // frequency in hertz
f2=60; // frequency in hertz
B=f1/f2 // since voltage level are same for both cases ratio of flux densities i.e Bm2/Bm1=f1/f2
ph2=ph1*(f2/f1)*B^s; // percentage hysteresis losses
pe2=pe1*(f2/f1)^2*B^2; // percentage eddy current losses
poh2=poh1; // since the voltage and current levels are same therefore ohmic losses are same
// for the total losses to be remain same at both the frequencies only ohmic losses can be  varied
p=poh1+ph1+pe1; // total losses at 50 hz
pc=ph2+pe2; // total core losses at 60 hz
pnoh=p-pc; // permissible value for new ohmic losses 
x=sqrt(pnoh/poh1); // factor by which output at 50 hz should be multiplied to get the same output at 60 hz
printf('ohmic losses at 60 hz is %f percent\n',poh2);
printf('hysteresis losses at 60 hz is %f percent\n',ph2);
printf('eddy current losses at 60 hz is %f percent\n',pe2);
printf('factor by which output at 50 hz should be multiplied to get the same output at 60 hz is %f ',x);

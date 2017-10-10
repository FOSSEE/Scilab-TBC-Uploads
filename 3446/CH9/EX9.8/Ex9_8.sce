// Exa 9.8
// To compare the performance of 16-PSK with 16-QAM.

clc;
clear all;

Pb=10^-8;//BER probability

//solution
disp("For 16-PSK");
// Pb=0.5*Q(0.552*sqrt(Eb_No));
//since Q[sqrt(2*Eb_No)]=(1/2)*erfc[sqrt(Eb_No)]            // refer page no 257 equ 9.35
deff('y=f(x)','y=0.25*erfc(sqrt(0.5*0.552^2*x))-Pb');
[x,v,info]=fsolve(0.1,f);  //x=Eb_No

printf('Using equation 9.50 we get Eb/No as %d dB (approx) \n ',round(10*log10(x)));
disp("For 16-QAM");
//Pb=0.75*Q(sqrt(0.8*Eb_No));
deff('y=f1(x1)','y=(3/8)*erfc(sqrt(0.4*x1))-Pb'); //x=Eb_No
//since Q[sqrt(2*Eb_No)]=(1/2)*erfc[sqrt(Eb_No)] // refer page no 257 equ 9.35
[x1,v1,info1]=fsolve(0.1,f1);  //x=Eb_No
printf('Using equation 9.66 we get Eb/No as %d dB (approx)\n ',round(10*log10(x1)));
disp("");
printf('Thus 16-QAM has an advantage of about %d dB compared to 16-PSK \n ',10*log10(x)-10*log10(x1));

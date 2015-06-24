// Example 5.32:Avm,Fh,Fl
clc;
clear;
close;
n=3
Cc=0.005;//in micro farad
C=100;//in pico farad
rd=7.7;//
Rs=1;//series resistance in killo ohmstance in killo ohms
gm= 25;//transconductane in milli ampere per volt
Rd=10;//resistance in killo ohms
x=(rd*Rd)/(rd+Rd);//
Av2m= -gm*x;//mid frequency gain of second stage
Rg=1;//gate resisatnce in mega ohms
y= (x*Rg*10^3)/(x+Rg*10^3);//
Avm= -gm*y;//mid frequency gain of first stage
Av= Avm*Avm*Avm;//total gain
Avdb=20*(log10(-Av));//
Req=y;//
Csh=100;//capacitance in pico farad
fh=(1/(2*%pi*Req*10^3*Csh*10^-9));//upper cut off frequency in killo hertz
Ro1=y;//
fl=(1/(2*%pi*Cc*10^-6*(Ro1*10^3+Rg*10^6)));//lower cut off frequency in hertz
x=sqrt(2^(1/n)-1);//
fhn=x*fh;//lower cut off frequency in hertz
fln=fl/x;//upper cut off frequency in hertz
disp(Avdb,"total voltage gain in db")
disp(fl,"lower cut off frequency in hertz")
disp(fh,"upper cut off frequency in killo hertz")
disp(fln,"3 db lower cut off frequency in hertz")
disp(fhn,"3 db upper cut off frequency in killo hertz")

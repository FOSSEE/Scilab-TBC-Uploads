// Example 5.31:Avm,Fh,Fl
clc;
clear;
close;
n=2
C=50;//in micro farad
Cc=0.1;//in micro farad
rd=50;//resis
Rs=1;//series resistance in killo ohmstance in killo ohms
gm= 2;//transconductane in milli ampere per volt
Rd=10;//resistance in killo ohms
x=(rd*Rd)/(rd+Rd);//
Av2m= -gm*x;//mid frequency gain of second stage
Rg=1;//gate resisatnce in mega ohms
y= (x*Rg*10^3)/(x+Rg*10^3);//
Avm= -gm*y;//mid frequency gain of first stage
Av= Avm*Av2m;//total gain
Avdb=20*(log10(Av));//
Req=y;//
Csh=10;//capacitance in pico farad
fh=(1/(2*%pi*Req*10^3*Csh*10^-6));//upper cut off frequency in mega hertz
Ro1=y;//
fl=(1/(2*%pi*Cc*10^-6*Ro1*10^3));//lower cut off frequency in hertz
x=sqrt(2^(1/n)-1);//
fhn=x*fh;//lower cut off frequency in hertz
fln=fl/x;//upper cut off frequency in hertz
disp(Avdb,"total voltage gain in db")
disp(fl,"lower cut off frequency in hertz")
disp(fh,"upper cut off frequency in mega hertz")
disp(fln,"3 db lower cut off frequency in hertz")
disp(fhn,"3 db upper cut off frequency in mega hertz")

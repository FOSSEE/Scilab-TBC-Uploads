// Example 5.29:Avm,Fh,Cc
clc;
clear;
close;
mu=70;//
rd=44;//resistance in killo ohms
gm= mu/(rd);//transconductane in milli ampere per volt
Rd2=50;//resistance in killo ohms
x=(rd*Rd2)/(rd+Rd2);//
Av2m= gm*x;//mid frequency gain of second stage
Rg=1;//gate resisatnce in mega ohms
y= (x*Rg*10^3)/(x+Rg*10^3);//
Av1m= -gm*y;//mid frequency gain of first stage
Av= Av1m*Av2m;//total gain
Req=y;//
Csh=200;//capacitance in pico farad
fh=(1/(2*%pi*Req*10^3*Csh*10^-9));//upper cut off frequency in killo hertz
Ro1=x;//
fl=50;//
Cc=(1/(2*%pi*fl*(Ro1*10^3+Rg*10^6)))*10^9;//coupling capacitance in nano farad
disp(Av2m,"mid frequency gain of second stage")
disp(fh,"upper cut off frequency in killo hertz")
disp(Cc,"coupling capacitance in nano farad")

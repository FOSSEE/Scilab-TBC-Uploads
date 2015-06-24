// Example 6.29;//bandwidth
clc;
clear;
close;
F2=16;//upper cutoff frequency in killo hertz without feedback
F1=40;//upper cutoff frequency in hertz without feedback
A= 800;// open loop voltage gain
Beta=0.02;// feedback ratio
Afb= (A/(1+(Beta*A)));//GAIN WITH FEEDBACk
F2f=F2*(1+A*Beta);//uppor cutoff frequency with feedback in killo hertz
F1f=F1/(1+A*Beta)*10^-3;//lower cutoff frequency with feedback in killo hertz
Bw=F2-F1*10^-3;///bandwidth without feedback in killo hertz
Bwf=round(F2f-F1f);//bandwidth with feedback in killo hertz
disp(Bw,"bandwidth without feedback in killo hertz")
disp(Bwf,"bandwidth with feedback in killo hertz")

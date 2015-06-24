// Example 6.12;// Avf,Fhf,Flf
clc;
clear;
close;
Fh=20;//upper cutoff frequency in killo hertz without feedback
Fl=30;//upper cutoff frequency in hertz without feedback
Av= 50000;// open loop voltage gain
Beta=5*10^-5;// feedback ratio
Avf= (Av/(1+(Beta*Av)));//GAIN WITH FEEDBACL
Fhf=Fh*(1+Av*Beta);//uppor cutoff frequency with feedback in killo hertz
Flf=Fl/(1+Av*Beta);//lower cutoff frequency with feedback in hertz
disp(Fhf,"uppor cutoff frequency with feedback in killo hertz")
disp(Flf,"lower cutoff frequency with feedback in hertz")

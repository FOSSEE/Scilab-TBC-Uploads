//Determining nyquist rate for the signals
clc
clear
close
Wb1=4*%pi;
Wb2=10*%pi;
Wbs=max(Wb1,Wb2);
Ws=2*Wbs;
//Bandlimited frequency doesnt change by Amplitude scaling
//(a) 2*x1(t)
Wa=2*Wb1
disp("Wa=")
disp(Wa)
//Timing shifting doesnt affect the magnitude spectrum
//(b) x1(t-1)
Wb=2*Wb1
disp("Wb=")
disp(Wb)
//Adding two band-limited spectrums will not sampling frequency
//(c) 2*x1(t)+x1(t-1)
Wc=2*Wb1
disp("Wc=")
disp(Wc)
//Compressing time axis expands frequency axis by the same factor
//(d) x2(2t)
Wd=2*2*Wb2
disp("Wd=")
disp(Wd)
//Expanding the time axis compresses the frequency axis by same factor
//(e) x2(t/2)
We=1/2*2*Wb2
disp("We=")
disp(We)
//(f) x2(2t)+x2(t/2)
Wf=max(Wd,We)
disp("Wf=")
disp(Wf)
//x1(t)x2(t)
Wg=2*(Wb1+Wb2)
disp("Wg=")
disp(Wg)
//x1(t)*x2(t)
Wh=2*min(Wb1,Wb2)
disp("Wh=")
disp(Wh)
//x1(t)*cos(2*%pi*t)
Wi=2*(Wb1+2*%pi)
disp("Wi=")
disp(Wi)
//x1'(t)
Wj=2*Wb1
disp("Wj=")
disp(Wj)

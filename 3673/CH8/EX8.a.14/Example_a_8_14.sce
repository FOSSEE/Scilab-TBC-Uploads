//Example_a_8_14 page no:334
clc;
fr=120*10^3;
BW=50*10^3;
Q=2;
f1f2=sqrt(fr);
f=poly([-14.4*10^9,50000,1],'f1','c');
fre=roots(f);
f1=fre(2);
f1=f1/1000;//converting to killo Hz
f2=BW+f1;
f2=f2/1000;//converting to killo Hz
disp(f1,"the lower cutoff frequency is (in kHz)");
disp(f2,"the upper cutoff frequency is (in kHz)");
//in textbook the frequency calculated is wrong, the root values of f1 are wrong

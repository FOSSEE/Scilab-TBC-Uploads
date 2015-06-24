//Part B Ex 1.11
clc;clear;close;
format('v',5);
//(a)
f=1;//kHz
n=1;//no. of octave(above)
f1=f*2^n;//Hz
disp(f1,"(a) An octave above 1 kHz (in kHz)= ");
//(b)
f=10;//Hz
n=3;//no. of octave(above)
f1=f*2^n;//Hz
disp(f1,"(b) Three octave above 10 Hz (in Hz)= ");
//(c)
f=100;//Hz
n=1;//no. of octave(below)
f1=f/2^n;//Hz
disp(f1,"(c) An octave below 100 Hz (in Hz)= ");
//(d)
f=20;//kHz
n=1;//no. of decade(above)
f1=f*10^n;//Hz
disp(f1,"(d) An decade above 20 Hz (in Hz) = ");
//(e)
f=1;//MHz
n=3;//no. of decade(below)
f1=f/10^n;//Hz
disp(f1*1000,"(e) Three decade below 1 MHz (in kHz) = ");
//(f)
f=50;//kHz
n=2;//no. of decade(above)
f1=f*10^n;//Hz
disp(f1/1000,"(f) Two decade above 50 Hz (in kHz) = ");

// Example 5.28:fh,fl 
clc;
clear;
close;
fln=20;//in hertz
fhn=100;//in kelo hertz
n=3;//
x=sqrt(2^(1/n)-1);//
fl=x*fln;//lower cut off frequency in hertz
fh=fhn/x;//upper cut off frequency in hertz
disp(fl,"lower cut off frequency in hertz")
disp(fh,"upper cut off frequency in killo hertz")


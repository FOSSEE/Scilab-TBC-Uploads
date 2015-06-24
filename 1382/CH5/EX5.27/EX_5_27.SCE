// Example 5.26:fh,fl and bandwidth
clc;
clear;
close;
fln=25;//in hertz
fhn=16;//in kelo hertz
n=3;//
x=sqrt(2^(1/n)-1);//
fl=x*fln;//lower cut off frequency in hertz
fh=fhn/x;//upper cut off frequency in hertz
BW=fh-fl*10^-3;//bandwidth
disp(fl,"lower cut off frequency in hertz")
disp(fh,"upper cut off frequency in killo hertz")
disp(BW,"bandwidth in killo hertz")

// Example 5.27:bandwidth
clc;
clear;
close;
fl=40;//in hertz
fh=20;//in kelo hertz
n=4;//
x=sqrt(2^(1/n)-1);//
fhn=x*fh;//lower cut off frequency in hertz
fln=fl/x;//upper cut off frequency in hertz
BW=fhn-fln*10^-3;//bandwidth
disp(fln,"lower cut off frequency in hertz")
disp(fhn,"upper cut off frequency in killo hertz")
disp(BW,"bandwidth in killo hertz")

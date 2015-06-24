// chapter 11
// example 11.1
//page 394
Rt=10*10^3;Ct=.005*10^-6;C=10*10^-6;
V=20;//in volts
fout=.25/(Ct*Rt);//free running frequency
disp(fout)
fL=(8*fout)/V;//lock range
disp(fL)// it may be -ve or +ve
fc=sqrt(fL/(2*3.14*3.6*1000*C));// capture range
disp(fc)
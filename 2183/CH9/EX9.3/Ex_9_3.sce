// Example 9.3;//number of received photos
clc;
clear;
close;
ber=10^-9;//
x=-2*log10(ber);//
np1=4*x;//no. of received photons for ASK heterodyne sysnchronous detection
np2=-4*log(2*ber);//no. of received photons for ASK heterodyne non-sysnchronous detection
np3=x/2;//no. of received photons for PSK homodyne detection
disp(round(np1),"no. of received photons for ASK heterodyne sysnchronous detection")
disp(round(np2),"no. of received photons for ASK heterodyne non-sysnchronous detection")
disp(round(np3),"no. of received photons for PSK homodyne detection")

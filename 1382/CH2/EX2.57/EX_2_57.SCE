// Example 2.57:alpha ,beta and cut off frequencies
clc;
clear;
close;
Cbc=12;//in pico farad
//H Paramters are
hie=6;//in killo ohms
hfe=224;
gm=38;//transconductance
rbe=5.9;// in killo ohms
rbb=100;//in ohms
Cbe= 63;//in pico farad
falpha= ((hfe)/(2*%pi*rbe*10^3*Cbe*10^-12))*10^-6;//
fbeta= ((1)/(2*%pi*rbe*10^3*(Cbe+Cbc)*10^-12))*10^-6;//
ft= ((gm*10^-3/(2*%pi*(Cbe+Cbc)*10^-12)))*10^-6;//
disp(falpha,"in mega hertz")
disp(fbeta,"in mega hertz")
disp(ft,"in mega hertz")


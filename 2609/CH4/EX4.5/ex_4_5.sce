////Ex 4.5
clc;
clear;
close;
format('v',5);
ACL=200;//unitless
AOL=2*10^5;//unitless
Rio=2;//Mohm
Ro=75;//ohm
Ri=1;//kohm(Assumed)
SF=AOL/ACL;//unitless
Beta=(SF-1)/AOL;//unitless
Rf=Ri*(1-Beta)/Beta;//kohm
disp(Ri,"Input impedence, Rif(kohm)");
disp(Rf,"Feedback impedence, Rf(kohm)");

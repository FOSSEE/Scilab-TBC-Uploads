////Ex 4.7
clc;
clear;
close;
format('v',5);
AOL=500;//unitless
Rio=300;//kohm
Ro=100;//ohm
ACL=AOL/(1+AOL);//unitless
Rif=Rio*(1+AOL)/1000;//Mohm
Rof=Ro/(1+AOL);//ohm
disp(ACL,"Close loop gain, ACL");
disp(Rif,"Value of Rif(Mohm)");
disp(Rof,"Value of Rof(ohm)");

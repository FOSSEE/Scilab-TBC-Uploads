clc;
//page no 8-6
//Example 8.1
//Given 
L=15*10^(-6);//in H
C=67.6*10^(-12);//in F
R=25;//in ohm
//Resonant frequency of the LC tuned circuit is given by
fr=(1/(2*%pi*sqrt(L*C)))*10^(-6);
disp(+'MHz',fr,'Resonant frequency of LC tuned circuit is ');
XL=(2*%pi*(fr*10^6)*L);
Q=XL/R;
disp(Q,'Q of the tuned circuit is ');
//Rounding fr to 5MHz and Q to 18.85
fr1=5;
Q1=18.85;
Bw=(fr1*10^6)/Q1;
disp(+'Hz',Bw,'Bandwidth of the tuned circuit is ');

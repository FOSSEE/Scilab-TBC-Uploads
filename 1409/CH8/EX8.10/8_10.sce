clc;
//page no 8-50
//Example 8.10
R=60;//in ohms
fr=2*10^6;//in Hz
C=50*10^(-12);//in farads
//we know that fr=1/(2*%pi*sqrt(L*C));
L=1/((2*%pi*fr)^2*C);
L1=L*10^(6);
disp(+'micro H',L1,'L=');
Q=(2*%pi*fr*L1*10^(-6))/R;
disp(Q,'Q of tuned circuit is ');

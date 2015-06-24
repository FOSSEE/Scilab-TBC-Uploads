 //Ex:102
clc;
clear;
close;
B_o=10*log(2)/log(10);// in db
b_o=floor(B_o);
e_ps=50;// in db
e_irps=e_ps-b_o;// satellite EIRP in db
printf("The satellite EIRP for the retransmitted carrier=%d dbW", e_irps);
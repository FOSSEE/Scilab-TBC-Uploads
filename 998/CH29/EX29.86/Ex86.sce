//Ex:86
clc;
clear;
close;
p_o=10*log(10000)/log(10);// power at output in dbW
g_a=60;//antenna gain in dbW
l_s=2;// losses in dbw
e_irp=p_o+g_a-l_s;// EIRP in dbw
printf("The earth station EIRP=%d dbW",e_irp);
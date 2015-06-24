// To determine the number of turns each current transformer should have .
clear 
clc;
Il=10000/((sqrt(3))*132);
ILV=10000/((sqrt(3))*6.6);
a=5/sqrt(3);
mprintf("ratio of CT on LV side is %.3f : %.3f\n",ILV,a);
mprintf("ratio of CT on HT side is %.3f : %d",Il,5);

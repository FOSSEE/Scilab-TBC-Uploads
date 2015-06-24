//Chapter 9
//page no 300
//given
clc;
clear all;
Po=10;           //in mW
Pi=150;              //in mW
Alpha=0.8;          //in dB/km
TA=-10*log10(Po/Pi);
printf("\n Total fibre Attenuation,L = %0.2f dB \n",TA);
l=TA/Alpha;
printf("\n maximum length is,l = %0.2f km\n",l);
//Round off Variations appear

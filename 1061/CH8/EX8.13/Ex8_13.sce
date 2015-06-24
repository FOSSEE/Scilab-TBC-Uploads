//Ex:8.13
clc;
clear;
close;
tr=3.5;// relative life time in ms
tnr=50;// nonrelative life time in ms
ni=tnr/(tr+tnr);// internal quantam efficiency
printf("The internal quantam efficiency =%f %%", ni*100);
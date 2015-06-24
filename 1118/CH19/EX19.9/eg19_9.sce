clear;
//clc();
ps=0.6;
pmax3=0.8;
pmax2=0.3333;
pmax1=1;

del0=asin(ps);
del2=asin(ps/pmax3);
delm=3.14-del2;
delc=acosd(((ps*(delm-del0)-pmax2*cos(del0)+ pmax3*cos(delm))/(pmax3-pmax2)));
printf("The critical clearing angle is:%.2f deg",delc);

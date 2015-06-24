//Example 11.9

clear;
clc;

printf("\tExample 11.9\n");

xA_d=0.9;
xA_s=0.1;
xB_d=1-xA_d;
xB_s=1-xA_s;

a=2.4;
xd=0.9;
xf=0.4;
xw=0.1;

n=(log(xA_d*xB_s/(xB_d*xA_s))/log(a))-1;
printf("\nNo. of theoretical plates in column is : %d",n);

Rm=((xd/xf)-(a*((1-xd)/(1-xf))))/(a-1);
printf("\nMinimum reflux ratio is %.2f\n",Rm);

yf=0.61;
printf("\nUsing Graphical construction with yf=0.61\n");
Rmin=(xd-yf)/(yf-xf);
printf("Minimum reflux ratio is %.2f\n",Rmin);

//End
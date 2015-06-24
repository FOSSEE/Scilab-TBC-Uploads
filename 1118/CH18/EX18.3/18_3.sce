clear;
//clc();
xz1g=(%i)*1.2;
xz1f=(%i)*1.0;

xz2g=(%i)*0.9;
xz2f=(%i)*1.0;

xz0g=(%i)*0.4;
xz0f=(%i)*3.0;

vf=11000/sqrt(3);
za0=xz0g +xz0f;
za1=xz1g +xz1f;
za2=xz2g +xz2f;

ia0=vf/(za0+za1+za2);
ia1=ia0;
ia2=ia0;

ifault=3*ia0;
va=vf-ia0*(xz0g+xz1g+xz2g);
printf("The voltage to neutral of the faulty phase is:%.2f V",va);

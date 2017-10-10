// Chapter 9 Example 6//
clc
clear
// from the above diagram distnce between various conductors can be found out//
// conductor radius =r//
r=0.025;// in cms//
k1=6;//k1=dac=dc1a1//
k2=4;//k2=dac1=dca1//
k3=10;//k3=dbb1//
k4=sqrt((k1/2)^2+(k1/2)^2);//k4=dab=dbc=db1c1=da1b1//
k5=sqrt((k1)^2+(k2)^2);//k5=daa1=dcc1//
k6=sqrt((k1/2)^2+(k3-(k3-k2)/2)^2);//k6=dbc1=dba1=dcb1=dab1//
// mutual GMD in position 1=ds1//
gmd1=(k4*k1*k6*k2)^(1/4);
printf("\n Mutual GMD of conductor in position1 = %.4fm \n",gmd1);
// self-GMD in position in position1=gmr1//
gmr1=sqrt(0.7788*r*k5);
printf("\n Self GMD in position1 = %.3fm\n",gmr1);
gmd2=(k4*k4*k6*k6)^(1/4);
printf("\n Mutual GMD of conductor in position2 = %.3fm \n",gmd2);
gmr2=sqrt(0.7788*r*k3);
printf("\n Self GMD in position2= %.3fm\n",gmr2);
gmd3=(k1*k6*k2*k4)^(1/4);
gmr3=sqrt(0.7788*r*k5);
printf("\n Mutual GMD of conductor in position3 = %.3fm\n",gmd3);
printf("\n Self GMD in position3 = %.3fm\n",gmr3);
// mutual gmd=dm//
dm=(gmd1*gmd2*gmd3)^(1/3);
printf("\n Mutual GMD = %.3fm\n",dm);
ds=(gmr1*gmr2*gmr3)^(1/3);
printf("\n Self GMR = %.3fm\n",ds);
// inductance of phase a=la//
la=2*10^-7*(log(dm/ds))*10^6;// 10^6 is conversion factor//
printf("\n Inductance of phase a = %.3fmH/km\n",la);



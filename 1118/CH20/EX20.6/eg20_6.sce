clear;
//clc();
z1=400;
z2=600;
zp=2000;
ef1=100;
ef2=(2/z1)*ef1/(1/z1 + 1/z2 + 1/zp);
er1=ef2-ef1;
printf("The voltage reflected in line1 is:%d kV\n",er1);

ir1=round(er1)/z1;
printf("The current reflected in line1 is:%.2f kV\n",ir1*1000);

zp=1/(-(1/z1)-(1/z2)+(2/z1));
printf("The resistance at the junction is:%.0f Ohm",zp);

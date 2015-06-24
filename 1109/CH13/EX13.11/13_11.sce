clear;
clc;
V1=10;I1=2.5;I2a=-0.5; //values with terminals 3-4 short-circuited
V2=V1;I2b=1.5; //values with terminals 1-2 short circuited
Yb=-I2a/V1;
Ya=(I1/V1)-Yb;
Yc=(I2b/V2)-Yb;
printf("-Ya = %f mho\n",Ya);
printf("-Yb = %f mhp\n",Yb);
printf("-Yc = %f mho",Yc);

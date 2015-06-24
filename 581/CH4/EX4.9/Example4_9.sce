
clear;
clc;

printf("\t Example 4.9\n");

T1=423; //wall temperature, K
d=0.02; //diameter of alluminium rod,m
k=205; //thermal conductivity of rod,W/(m.K)
l=0.08; //length of rod, m
T2=299; //air temperatutre, K 
h=120; //convective coefficient, W/(m^2*K)
mL=0.8656;
a=h*d/(2*k);
mr=mL*(d/(2*l)); // by looking at graph of 1-Qact/Q(no temp.depression) vs. mr*tanh(mL), we can find out the value of Troot. 1-Qact./Q(no temp. depression) = 0.05 so heat flow is reduced by 5 percent

Troot=T1-(T1-T2)*0.05;
Tr=Troot-273;
printf("\t actual temperature of root is : %.1f C , the correction is modest in this \n",Tr);
//end
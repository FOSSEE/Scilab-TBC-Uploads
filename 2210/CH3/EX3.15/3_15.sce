//Chapter 3, Prblem 15, figure 3.30
clc
//from figure 3.30
zo=50                       //in ohm
zl=50                       //in ohm

//calculating the S parameter
z1=zo+zl
s11=(z1-zo)/(z1+zo)
z2=zo+zl
s22=(z2-zo)/(z2+zo)
s21=(2*zl)/(50+zo+zl)
s12=(2*zl)/(50+zo+zl)

s=[s11 s12;s21 s22]

printf("s11 (magnitude) = %.3f \n\t(angle) = 0 degree\n\n",s11)
printf("s12 (magnitude) = %.3f \n\t(angle) = 0 degree\n\n",s12)
printf("s21 (magnitude) = %.3f \n\t(angle) = 0 degree\n\n",s21)
printf("s22 (magnitude) = %.3f \n\t(angle) = 0 degree\n\n",s22)
disp(s,"S = ")

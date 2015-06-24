
//Ex11_1

clc;

//Given:
density1=3.123;// for KI in CGS units
density2=3.168;// for KIO3 in CGS units
l=6.023*10^23;// avogadro constant
ue=0.211;// electron absorption coefficent in barn per electron
// 1 b=10^(-24) cm^2

//Atomic absorption coefficients for diferent atoms in b/atom

K=ue*19;
I=ue*53;
O=ue*8;

//mass absorption coefficient for the given atoms in cm^2/g

uK=(6.022*10^23*K*10^-24)/39;
uI=(6.022*10^23*I*10^-24)/127;
uO=(6.022*10^23*O*10^-24)/16;

//solution: (a)KI

uKI=K+I;//molecular absorption coefficient
umKI=(39*uK+127*uI)/166;//mass absorption coefficient
ulKI=umKI*density1;// linear absorption coefficient

printf("\n The molecular absorption coefficient of KI in b/molecule is = %f ",uKI)
printf("\n The mass absorption coefficient of KI in cm^2/g is = %f ",umKI)
printf("\n The linear absorption coefficient of KI in cm^-1 is = %f ",ulKI)

//solution: (b)KIO3

uKIO4=(K+I+O*4);//molecule absorption coefficient
umKIO4=(39*uK+127*uI+64*uO)/230;//mass absorption coefficient
ulKIO4=umKIO4*density2;// linear absorption coefficient

printf("\n \n The molecular absorption coefficient of KIO4 in b/molecule is = %f ",uKIO4)
printf("\n The mass absorption coefficient of KIO4 in cm^2/g is = %f ",umKIO4)
printf("\n The linear absorption coefficient of KIO4 in cm^-1 is = %f ",ulKIO4)

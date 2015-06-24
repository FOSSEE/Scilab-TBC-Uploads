clear
clc
XA=0.35;
FAo=2000;//mol/hr
eA=3;k=96;
CAo=0.1;
W=((1+eA)*log(1/(1-XA))-eA*XA)*(FAo/(k*CAo));
printf("\n The amount of catalyst(kg) needed in a packed bed reactor is %f",W)

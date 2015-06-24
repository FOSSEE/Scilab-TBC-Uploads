clear;
//clc();

l=80
cap=0.00914*10^(-6)*l;
 vl=132*1000;
 vph=vl/sqrt(3);
 f=50;
 l=1/(3*(2*(%pi)*f)^(2)*cap);
printf("The inductance is:%.2f H\n",l)

il=vph/((2*(%pi)*f)*l);
kvar=vph*il/1000;
printf("The rating of the arc suppression coil is:%.2f kVA",kvar)

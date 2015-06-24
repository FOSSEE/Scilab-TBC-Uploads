clear;
//clc();

l=265*10^(-6);
c=0.165*10^(-6);

z2=sqrt(l/c);
z1=400;
ef=500;
z3=1000;
et1= (2*z2)*ef/(z1 + z2);
printf("The incident voltage in the cable is:%.0f kV\n",et1);

erb=(z3 - z2)*et1/(z3 + z2);
printf("The reflected voltage at the transformer end is:%.0f kV\n",erb);

vcd=et1+erb;
printf("The voltage at the junction is:%.0f kV",vcd);

clear;
clc;
Ro=600;f=120;fo=1500; //f=f2-f1
F=fo*fo; //F=f1*f2
l1=Ro/(2*%pi*f);
c1=round(f*10^11/(2*Ro*%pi*F))/10^5;
c2=round(1*10^8/(%pi*Ro*f))/100;
l2=Ro*f/(4*%pi*F);
n=(1/2)*(sqrt(((2*c2/(c1/2))+9)-1));
C1=((2*n)-1)*c1*10^-6/(2*n);
C2=c1*10^-6/n;
L=n*n*l2;
C3=c2*10^-6/(n*n);
printf("The elements of the filter are:\n");
printf(" (2n-1)C1/n = %f microfarads\n",fix(C1*(10^9))/1000);
printf(" 2C1/n = %f microfarads\n",fix((C2)*(10^10))/10^4);
printf(" (n^2)L2  = %f H\n",round(L*10)/10);
printf(" C2/(n^2) = %f microfards",round((C3)*(10^9))/1000);

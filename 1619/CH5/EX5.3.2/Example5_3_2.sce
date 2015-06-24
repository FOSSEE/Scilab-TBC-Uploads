//Example 5.3.2 page 5.8;
 clc;
 clear;
 
 Ps= 0.1;
 alpha = 6;
 L= 0.5;
 Ps = 10*log10(Ps);
 NA= 0.25;
 Lcoupling= -10*log10(NA^2);
 Lf= alpha*L;
lc= 2*2;
Pm= 4;
Pout = Ps-(Lcoupling+Lf+lc+Pm);
printf("The actual power output is %d dBm",Pout);
Pmin = -35;
printf("\n\nMinimum input power required is %d dBm",Pmin);
printf("\n\nAs Pmin > Pout, system will perform adequately over the system operating life.");

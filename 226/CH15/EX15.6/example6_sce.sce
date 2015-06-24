//chapter 15
//example 15.6
//page 654
printf("\n")
printf("given")
Vip=1;R2=39*10^3;R3=4.7*10^3;SR=250/10^-6;f=100*10^3;
disp(" for the AD843")
Vop=((R2+R3)/R3)*Vip
fp=SR/(2*3.14*Vop);
printf("full power bandwidth is %dHz\n",fp)
disp(" for a 741")
SR=.5/10^-6;
Vp=SR/(2*3.14*f);
printf(" maximum peak output voltage is %3.2fV\n",Vp)
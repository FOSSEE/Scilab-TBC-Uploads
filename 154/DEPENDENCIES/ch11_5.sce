clc
disp("Problem 11.5")
printf("\n")

printf("Given")
disp("Veff=110V Ieff=20(-50 deg)")
Imagn=20;Iph =-50;
Veff=110;

P=Veff*Imagn*cos((abs(Iph)*%pi)/180)
Q=Veff*Imagn*sin((abs(Iph)*%pi)/180)
printf("Average power is %3.1fW\n",P)
printf("Reactive power is %3.1fvar\n",Q)


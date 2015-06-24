printf("closed loop transfer function =10/(s^2+(1+10K)*s+10) with d=0.5" );
printf("characterstic equation of this system is s^2+(1+10K)*s+10=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
d=0.5;
w=sqrt(10);
k=(2*d*w-1)/10;
disp(k,"Value of K is");

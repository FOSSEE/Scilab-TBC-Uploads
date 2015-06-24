clear;
clc;
printf("\n Example 5.2");
//Area of the tank required to give an underflow concentration of 1200kg/m^3 for a feed rate of 2 m^3/min

//Initial height of slurry in the tank
H = [900;800;700;600;500;400;300;260;250;220;200;180];
uc = [13.4;10.76;8.6;6.6;4.9;3.2;1.8;1.21;1.11;0.80;0.60;0.40];
i=1;
while i<13
    c(i)=200*900/H(i);
    x(i)=1000*(1/c(i)-1/1200);
    sed(i) = c(i)*uc(i)/(1000*60);
    y(i)= uc(i)*10^(-3)/((1/c(i)-1/1200)*60);
    z(i) = 1/y(i);
    i=i+1;
end
printf("\nH(mm)");
printf("\n%d",H);
printf("\n c(kg/m^3):\n");
printf("%d\n",c);
printf("Sedimentation flux(kg.s/m^2):\n");
printf("%.4f\n",x);
printf("uc/(1/c-1/1200)\nkg.sec/m^2:\n");
printf("%.4f\n",y);
printf("1000*(1/c-1/cu)\nm^3/kg*10^3\n");
printf("%.3f \n",x);
printf("\n\n(1/c-1/1200)/uc\n m^2.kg/sec\n");
printf("%.1f\n",z);
m1=max([18.7;20.1;21.3;22.7;23.8;26.0;27.8;30.3;30.0;29.2;27.8;25.0]);
printf("\n\nthe maximum value of (1/c-1/1200)/uc is %.1f m^2*kg/s",m1);
A = 2*200*30.3/60;
printf("\n The area required is A = Qc[(1/c-1/cu)/uc]max = %dm^2",A)

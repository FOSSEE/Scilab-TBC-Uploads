clc;
clear;
printf("\t\t\tChapter4_example3\n\n\n");
hc=30;
L=0.24;
k=1.25;
c=890;
rou=550;
Bi=hc*L/k;
alpha=k/(rou*c);
printf("The value of diffusivity is %.2e sq.m/s",alpha);
Tc=150;
T_inf=600;
T_i=50;
printf("\nThe Biot number is %.2f,",Bi);
if Bi<0.1 then
    n=0;
else if  Bi>0.1 then
        n=1;
    end
end
select n
case 0 then 
    disp('The Lumped capacity approach is applicable');
case 1 then
    disp('Since value of Biot number is greater than 0.1, Lumped capacity approach would not give accurate results, so figure 4.6 is to be used');
    reciprocal_Bi=1/Bi;
    dimensionless_temp=(Tc-T_inf)/(T_i-T_inf);
    Fo=0.4; //the value of Fourier Number from figure 4.6(a)
    t=L^2*Fo/alpha;
    printf("The required time is %d s = %.1f hr",t,t/3600);
end
// reading values of dimensionless temperature from figure 4.6(b) using reciprocal of Biot number
x_per_L=[0 0.2 0.4 0.6 0.8 0.9 1.0];
[n,m]=size(x_per_L);
printf("\nThe choosen values of x/L are: \n");
disp(x_per_L);
printf("\n Values for dimensionless temperature for corresponding values of x/L:")
dim_T=[1.0 .97 .86 .68 .48 .36 .24]; // value for dimensionless temperature for corresponding value of x/L
disp(dim_T);
printf("the temperature profile with distance is\n");
printf("\tx/L\t\t");
for j=1:m
    printf("%.2f\t",x_per_L(1,j));
    
end
printf("\n");
printf("(T-T_inf)/T_i-T_inf)\t");
for i=1:m
    printf("%.2f\t",dim_T(i));
end
T=zeros(1,m);
x=zeros(1,m);
for i=1:m
    T(1,i)=dim_T(1,i)*dimensionless_temp*(T_i-T_inf)+T_inf;
    x(1,i)=x_per_L(1,i)*L;
end
printf("\n\tx,cm\t\t");
for i=1:m
    X(1,i)=x(1,i)*100;
    printf("%.1f\t",X(1,i));
end
printf("\nT, degree celsius\t");
for i=1:m
    printf("%d\t",T(1,i));
end
plot2d(X,T,rect=[0,0,24,600]);
a=gca();
newticks=a.x_ticks;
newticks(2)=[0;4;8;12;16;20;24];
newticks(3)=['0';'4';'8';'12';'16';'20';'24'];
a.x_ticks=newticks;
newticks1=a.y_ticks;
newticks1(2)=[0;100;200;300;400;500;600];
newticks1(3)=['0';'100';'200';'300';'400';'500';'600'];
a.y_ticks=newticks1;
xlabel('x,cm');
ylabel('t,degree celsius');
title('Temperature profile in the 24-cm slab after 2.5 hr.');
filename='Temperature profile in the 24-cm slab after 2.5 hr.';
xgrid(1);
xs2jpg(0,filename);

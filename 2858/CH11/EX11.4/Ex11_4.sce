//example 11.4
clc; funcprot(0);
FS=4;
Ap=0.1295;
Nc=9;
cu2=100;
Qp=Ap*Nc*cu2;
D=[5, 10, 30];
avgD=[2.5, 7.5,20];
sigma=[45, 110.5, 228.5];
cu=[30, 30, 100];
alpha=[0.6 0.9 0.725];
L=[5, 5, 20];
p=%pi*0.406;
Qs=0;
disp(Qp,"bering capacity in kN");
printf("depth (m)\t avg Depth(m)\t avgVerticalStress(kN/m^2)\t cu(kN/m^2)\t cu/sigma\t alpha\n" )
for i=1:3
    cusig(i)=cu(i)/sigma(i);
    Qs=Qs+alpha(i)*cu(i)*L(i)*p;
    printf("%.2f\t          %.2f\t           %.2f\t\t\t   %.2f\t   %.2f\t\t %.2f\n",D(i),avgD(i),sigma(i),cu(i),cusig(i),alpha(i));
end
disp(Qs,"bearing capacity in kN");
//part2
lambda=0.136;
L=30;
fav=lambda*(178.48+2*76.7);
Qs2=p*L*fav;
//part3
fav1=13;
fav2=31.9;
fav3=93.43;
Qs3=p*(fav1*5+fav2*5+fav3*20);
disp(Qs3,"bearing capacity in kN");
Qsavg=Qs/3+Qs2/3+Qs3/3;
Qu=Qp+Qsavg
Qall=Qu/FS;
disp(Qall,"allowed bearing capacity in kN");


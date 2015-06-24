//example 8.7
clc; funcprot(0);
pi=%pi;
phi=36*pi/180;
Ka=(tan(pi/4-phi/2))^2;
z=[8, 12, 16];
sigmaG=80*12;
Gamma1=110;
FS=1.5;
for i=1:3
    Sv(i)=sigmaG/Gamma1/z(i)/Ka/FS*12;
    printf("for z=%.2f ft Sv = %.2f inches\n",z(i),Sv(i));
end
z=[16,56,76,96,112,144,176];
zf=z/12;//z in ft
Sv=[1.67,1.67,1.67,1.67,1.33,1.33,1.33];
k=[7.48,5.78,4.93,4.08,3.4,2.04,0.68];//0.51(H-z)
printf("z(in)    z(ft)  Sv(ft)  0.51(H-z)(ft)  0.438Sv(ft) L(ft) \n")
for i=1:7
    k2(i)=0.438*Sv(i);//0.438Sv
    L(i)=k(i)+k2(i);
    printf("%.2f\t %.2f\t %.2f\t %.2f\t\t %.2f\t   %.2f\n",z(i),zf(i),Sv(i),k(i),k2(i),L(i));
end
Sv=20/12;
Ka=0.26;
FS=1.5;
l1=Sv*Ka*FS/4/tan(2/3*phi);
if l1<3 then
    l1=3;
    disp(l1,"length in ft")
end


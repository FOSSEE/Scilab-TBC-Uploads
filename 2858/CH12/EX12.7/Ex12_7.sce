//example 12.7
clc; funcprot(0);
Ds=1;
Ep=22e6;
Ri=1;
cu=100;
Ip=%pi*Ds^4/64;
Qc=7.34*Ds^2*Ep*Ri*(cu/Ep/Ri)^0.6;
disp(Qc,"bearing force in kN");
Mc=3.86*Ds^3*Ep*Ri*(cu/Ep/Ri)^0.6;
disp(Mc,"bearing moment on kNm")
//from figure
xoQM=0.0046*1;
xoMQ=0.0041*1;
xo=0.5*(xoQM+xoMQ);
disp(xo*1000,"net ground line deflection in mm");
//partb
Ip=0.049;
Qg=150;
Mg=200;
deff('y=f(T)','y=338e-6*T^3+300.6e-6*T^2-0.00435');
[x]=fsolve(2,f);
T=x;
k=[0, 0.4, 0.6, 0.8, 1, 1.1, 1.25];//z/T
Am=[0, 0.36, 0.52, 0.63, 0.75, 0.765, 0.75];
Bm=[1, 0.98, 0.95, 0.9, 0.845, 0.8, 0.73];
printf("z/T\t Am\t Bm\t Mz(kN-m)\n");
for i=1:7
    Mz(i)=Am(i)*Qg*T+Bm(i)*Mg;
    printf("%.2f\t %.2f\t %.2f\t %.2f \n",k(i),Am(i),Bm(i),Mz(i));
end
disp(1*T,"depth in m");
//partc
Mmax=400;
sigma=Mmax*Ds/2/Ip;
disp(sigma,"tensile stress in kN/m^2");
//partd
//from figure
k=0.85;
L=k*1;
disp(L,"length in m");


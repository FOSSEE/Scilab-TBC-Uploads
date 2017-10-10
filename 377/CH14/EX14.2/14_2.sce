disp("φs=χsi+(Ev-Ef)");
k=0.025852;  //say k=K*T/q
n=1*10^15;
Nc=2.84*10^19;
a=4.05;  //say a=χsi
b=k*log(Nc/n);  //say b=Ev-Ef
printf('\n The value of Ev-Ef is %fV',b);
d=a+b;  //say d=φs
printf('\n The value of φs is %fV\n',d);
disp("φms=φm-φs");
c=4.1;  //say f=φm
e=c-d;  //say g=φms
printf('\n The value of φms is %1.3fV\n',e);
Vfb1=e;
disp("Vfb=Vfb1-(Qss1/cox1)");
Qss1=1.6*10^-8;
cox1=3.45*10^-8;
Vfb=Vfb1-(Qss1/cox1);
printf('\n The value of Vfb is %fV\n',Vfb);
Nd=1*10^15;
ni=1.07*10^10;
f=k*log(Nd/ni);  //say f=φb
printf('\n The value of φb is %1.3f\n',f);
g=11.7*8.854*10^-14;  //say Єs=g
q=1.6*10^-19;
Xdmax=sqrt(2*g*2*f/(q*Nd));
printf('\n The value of Xdmax is %f*10^-5cm\n',Xdmax*10^5);
Cmin=1/((1/cox1)+(Xdmax/g));
printf('\n The value of Cmin is %f*10^-9F/cm^2\n',Cmin*10^9);
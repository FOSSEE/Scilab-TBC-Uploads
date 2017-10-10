disp("φs=χsi+(Eg/(2*q))+(Ev-Ef)");
k=0.026;  //say k=K*T/q
ni=10^10;
Na=10^17;
a=4.05;  //say a=χsi
b=0.56;  //say b=Eg/(2*q)
c=k*log(Na/ni);  //say c=Ev-Ef
printf('\n The value of Ev-Ef is %fV',c);
d=a+b+c;  //say d=φs
printf('\n The value of φs is %fV\n',d);
disp("φms=φm-φs");
f=4.1;  //say f=φm
g=f-d;  //say g=φms
printf('\n The value of φms is %1.2fV\n',g);
clc;
b=0.228;
a=1-b;
c=[1+(2*0.455)-b-2*a]/2

n2=a+b+c+1.709;

p1=8.28;
T2=555;

n1=1+0.455+1.709;
T1=2968;
p2=p1*(n2/n1)*(T1/T2);
p=1;

K=a/b*[n2*p/(c*p2)]^0.5;
disp(log(K),"log(K) is:");
disp("2968","from tables it is proved that temperatur is:")

clc;
clear;
z2=0.5;//ft
q=5.75;//(ft^2)/sec
y1=2.3;//ft
z1=0;//ft
V1=2.5;//ft/sec
//bernoulli equation
a=y1+((V1^2)/(2*32.2))+z1-z2;//ft; where a=y2+((V^2)/(2*g))
//countinuity equation
b=(y1*V1);//(ft^2/sec); where b=(y2*V2)
c1=2*32.2;
c2=(-c1)*a;
c3=b^2;
fn=poly([c3 0 c2 c1],"y2","c");
y2=roots(fn);
sum1=y2(3)+z2;//ft
sum2=y2(1)+z2;//ft
E1=y1+(c3/(y1^2));//ft
Emin=3*((q^2)/(32.2^(1/3)))/2;//ft
z=E1-Emin;//ft
//using this value of z, the surface elevation is found to be sum1
disp("ft",sum1,"The elevation of the water surface downstream of the ramp=")
count=1;
y=1:0.1:10;
for i=1:0.1:10
    E(count)=i+(c3/(i^2));
    count=count+1;
end
plot2d(E,y,rect=[0,0,10,12])
xtitle("y vs E","E","y")

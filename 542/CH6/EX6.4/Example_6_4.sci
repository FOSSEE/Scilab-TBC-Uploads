clear;
clc;
printf("\n Example 6.4");
t = 250:250:2000; //time is in secs
y = [0.00223;0.00601;0.00857;0.0106;0.0121;0.0129;0.0134;0.0137];

i =1;
yo = 0.01442;
while i<9
    z(i) = y(i)/yo;
    y(i)=1-z(i);
    x(i)=log(y(i));
    i=i+1;
end
xtitle("slope of adsorption isotherm","Time(sec)","log(1-(y/yo))")
plot(t,x,"o-")
printf("\nFrom the graph the value of slope is %f",-0.00167);
Gm = 0.679*10^(-6);  //units are in kmol/sec
W = 4.66;            //units are in gram
b = poly([0],'b');
s = roots(-0.00167*4.66*b+0.679*10^(-6));
printf("\n b = %.4f kmol/kg",s*10^3);



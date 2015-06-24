//clc()
s = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
v = [10,16.3,23,27.5,31,35.6,39,41.5,42.9,45,46,45.5,46,49,50];
g = 9.8//m/s^2
m = 68.1;//kg
c = 12.5//kg/s
for i = 1:15
    v1(i) = g*m*(1 - exp(-c*s(i)/m))/c;
    v2(i) = g*m*s(i)/(c*(3.75+s(i)));
end
disp(s,"time = ")
disp(v,"measured v =")
disp(v1,"using equation(1.10) v1 = ")
disp(v2,"using equation((17.3)) v2 =  ")
plot2d(v,v2);
xtitle('v vs v2','v','v2');

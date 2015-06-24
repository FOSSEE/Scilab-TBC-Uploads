clc;
clear;
g=9.8;//m/s^2; acceleration due to gravity
m=68.1;//kg
c=12.5;//kg/sec; drag coefficient
count=1;
for i=0:2:12
    v(count)=g*m*(1-exp(-c*i/m))/c;
    disp(v(count),"v(m/s)=",i,"Time(s)=")
    count=count+1;
end
disp(g*m/c,"v(m/s)=","infinity","Time(s)=")
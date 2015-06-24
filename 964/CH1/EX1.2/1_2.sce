clc;
clear;
g=9.8;//m/s^2; acceleration due to gravity
m=68.1;//kg
c=12.5;//kg/sec; drag coefficient
count=2;
v(1)=0;
disp(v(1),"v(m/s)=",0,"Time(s)=")
for i=2:2:12
    v(count)=v(count-1)+(g-c*v(count)/m)*(2);
    disp(v(count),"v(m/s)=",i,"Time(s)=")
    count=count+1;
end
disp(g*m/c,"v(m/s)=","infinity","Time(s)=")
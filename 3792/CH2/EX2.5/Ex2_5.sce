// Example 2_5
clc;funcprot(0);
// Given data
// v_x=50-60t;
// y=100-4t^2;
// where v_x is in meters per second, y is in meters, and t is in seconds.

// Calculation
// x=50t-8t^2;
a_x=-16;// The x-component of the acceleration in m/s^2
// v_y=-8t; The y-component of the velocity in m/s
a_y=-8;// The y-component of the acceleration in m/s^2
// When y=0,
t=sqrt(100/4);
v_x=50-(16*t);
v_y=-8*(t);
v=sqrt((v_x.^2)+(v_y.^2));// m/s
a=sqrt(a_x.^2+a_y.^2);// m/s^2
printf("\nThe velocity,v=%2.0fi+(%2.0fj) m/s \nThe acceleration,a=%2.0fi+(%1.0fj) m/s^2",v_x,v_y,a_x,a_y);
y=[0,20,40,60,80,100];// m
for(i=1:6)
    t(i)=sqrt((100-y(i))/4);// s
    x(i)=((50*t(i))-(8*t(i).^2));// m
    v_x(i)=((50*t(i)-(8*t(i).^2)));// m/s
    v_y(i)=(-8*t(i));// m/s
    v=sqrt((v_x.^2)+(v_y.^2));// m/s
    a=sqrt(a_x.^2+a_y.^2);// m/s^2
end
plot(x',y,'-.*');
xlabel('x,m');
ylabel('y,m');

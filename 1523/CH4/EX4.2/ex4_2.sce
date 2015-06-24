//AC Circuits:example 4.2:(pg4.4)
f=50;
Im=100;
i1=86.6;
t=(1/600);
pi=3.14;
disp("f=50 c/s");
disp("Im=100 A");
// part(a)
disp("i=Im*sin(2*pi*f*t)");
i=Im*sin(2*pi*f*t);
printf("i=%.f A",i);
// part (b)
disp("i=Im*sin(2*pi*f*t1)");
t1=(asind(i1/Im)/(2*pi*f));
printf("t1=%.e second",t1);
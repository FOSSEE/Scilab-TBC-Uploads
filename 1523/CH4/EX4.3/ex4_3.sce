//AC Circuits:example 4.3:(pg4.5)
f=50;
I=20;
t1=0.0025;
t2=0.0125;
I1=14.14;
pi=3.14;
disp("f=50 c/s");
disp("I=20 A");
mprintf("Im=I*sqrt(2)");
Im=(sqrt(2)*I);
printf("\nIm=%.2f A",Im);
mprintf("\nEquation of current, \ni=Im*sin(2*pi*f*t)");
disp("=28.28sin(2*pi*f*t)=28.28sin(100*pi*t)");
disp("(a)At           t=0.0025 seconds");
i=(Im*sin(2*pi*f*t1));
printf("i=%.f A",i); //when t=0.0025seconds
disp("(b)At           t=0.0125 seconds");
i=(Im*sin(2*pi*f*t2));
printf("i=%.f A",i); //when t=0.0125seconds
disp("(c)             i=28.28sin(100*pi*t) ");
t=(asind(I1/Im)/(2*pi*f));
printf("t=%.e second",t);// when I=14.14A
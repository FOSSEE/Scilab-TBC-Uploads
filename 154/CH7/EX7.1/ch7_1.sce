clc
disp("Example 7.1")
printf("\n")

t1=-5:0.5:8
v1=cos (t1)
figure
a= gca ();
plot(t1,v1)
xtitle ('v1 vs t1','t1','v1 ');
a. thickness = 2;
//From the graph
printf("Time period1= %3.3fs\n Frequency 1=%0.3fHz\n",6.2832,0.159)

t2=-4:0.5:10
v2=sin (t2)
figure
a= gca ();
plot(t2,v2)
xtitle ('v2 vs t2','t2','v2 ');
a. thickness = 2;
//From the graph
printf("Time period 2= %3.3fs\n Frequency 2=%0.3fHz\n",6.2832,0.159)

t3=-1:0.05:1.5
v3=2*cos (2*%pi*t3)
figure
a= gca ();
plot(t3,v3)
xtitle ('v3 vs t3','t3','v3 ');
a. thickness = 2;
//From the graph
printf("Time period 3= %ds\n Frequency 3=%dHz\n",1,1)

t4=-5:0.5:12
v4=2*cos (%pi*t4/4-%pi/4)
figure
a= gca ();
plot(t4,v4)
xtitle ('v4 vs t4','t4','v4 ');
a. thickness = 2;
//From the graph
printf("Time period 4= %ds\n Frequency 4=%0.3fHz\n",8,0.125)

t5=-1:0.005:1
v5=5*cos (10*t5+%pi/3)
figure
a= gca ();
plot(t5,v5)
xtitle ('v5 vs t5','t5','v5 ');
a. thickness = 2;
//From the graph
printf("Time period 5= %0.3fs\n Frequency 5=%3.2fHz\n",.62832,1.59)

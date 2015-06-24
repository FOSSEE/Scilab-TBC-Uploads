clc();
clear;
// wave y= 2*sin(10*pi*t - (pi*x)/40  + pi/4)
// (a) Plot the space profile at t= T/4
// Comapring the given Equation with  y= A*sin(omega*t - k*x + phi)
omega = 10*%pi ; //Angular frequency in rad/s
k= %pi/40 ; // Wave number in rad/m
T= 1/5 ; // 2*pi/T = 10*pi , so Time period is 1/5 s
lambda = 80; // Wavelength in m ,  2*pi/lambda = pi/40 , so lambda = 80
t1= T/4; //time period in s
x1= 0;//  in m
printf("The Space profile of a wave y= 2*sin(10*pi*t - (pi*x)/40 + pi/4) when  t= T/4\n\n")
printf("\tx (in m) \t y1(x)  (in m)\n");
while x1<180
y1= 2*sin((omega*t1)-(k*x1)+ (%pi/4));
printf("\t%d\t\t%.3f\n",x1,y1);
x1 = x1+10;
end
//Now, we will plot the space profile from the values obtained for y1 for each value of x1
x_1 = [0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170];
y_1 = [1.414214,2.000000,1.414214,0.000000,-1.414214,-2.000000,-1.414214,-0.000000,1.414214,2.000000,1.414214,0.000000,-1.414214,-2.000000,-1.414214,-0.000000,1.414214,2.000000];
// axis centered at (0,0)
axis=gca(); // Handle on axes entity
axis.x_location = "origin"; 
axis.y_location = "origin"; 
plot(x_1,y_1,style=5);
xtitle("Space Profile at t = T/4 for the wave    y= 2*sin(10*pi*t - (pi*x)/40  + pi/4)","x (in m)","y1(x)  (in m)");
xpause(10000000);
//(b)
x2= lambda/8; //in m
t2=0; // time period in s
printf("The time profile of a wave y= 2*sin(10*pi*t - (pi*x)/40 + pi/4) when  x= lambda/8\n\n")
printf("\t t(in s)     \t     y2(t) (in m)\n\n");
while t2<0.4
 y2=2*sin((omega*t2)-(k*x2)+ (%pi/4));
 printf("\t%.3f\t\t%.3f\n",t2,y2);
 t2=t2+0.025;
end
//Now,we will plot the time profile from the values obtained for y2 ,for each value of t2
x_2=[0,0.025,0.05,0.075,0.1,0.125,0.15,0.175,0.2,0.22500,0.250000,0.27500,0.30000,0.325000,0.350000,0.37500];
y_2=[0.000000,1.414214,2.000000,1.414214,0.000000,-1.414214,-2.000000,-1.414214,-0.000000,1.414214,2.000000,1.414214,0.000000,-1.414214,-2.000000,-1.414214];
// axis centered at (0,0)
axis1=gca(); // Handle on axes entity
axis1.x_location = "origin"; 
axis1.y_location = "origin"; 
plot(x_2,y_2,style= 4);
xtitle("Time Profile at x = lambda/8 for the wave    y= 2*sin(10*pi*t - (pi*x)/40  + pi/4)","t (in s)","y2(t)  (in m)");


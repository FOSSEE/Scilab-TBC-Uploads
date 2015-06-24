// Exercise B-2-4
// Plotting the response of different types of controllers
// to unit step and unit ramp input.

clear; clc; xdel(winsid());

Kp = 4;    //proportional gain
Ki1 = 2;   //integral gain
Td = 0.8;  //differential time
Ti = 2;    //integral time
Ki2 = Kp / Ti;

s = %s;
Gi = syslin('c',Ki1/s);

t = 0:0.05:3;
ramp = t; 
subplot(3,2,1);
p1 = Kp * ones(1,length(t));
p2 = Kp * t;
plot2d(t ,p1 , style=2);
plot2d(t ,p2 , style=3);
xtitle('Proportional control','t','y');
legend('step input','ramp input'); 
xgrid(color('gray'));

subplot(3,2,2);
i1 =  csim("step",t,Gi);
i2 =  csim(ramp,t,Gi); 
plot2d(t ,i1, style=2);
plot2d(t ,i2, style=3) ;
xtitle('Integral control','t','y');
xgrid(color('gray'));
i1 = i1 * Ki2 / Ki1; //change of gain
i2 = i2 * Ki2 / Ki1;

 
subplot(3,2,3);
plot2d(t ,p1 + i1, style=2);
plot2d(t ,p2 + i2, style=3);
xtitle('Proportional integral control','t','y');
xgrid(color('gray'));
 
subplot(3,2,4);
pd1 = p1;
pd2 = p2 + Kp*Td*ones(1,length(t)); //derivative term
plot2d(t ,pd1, style=2);
plot2d(t ,pd2, style=3);
xtitle('Proportional plus derivative control','t','y');
xgrid(color('gray'));
 
subplot(3,2,5);
plot2d(t ,pd1 + i1, style=2);
plot2d(t ,pd2 + i2, style=3,leg='ramp input') ;
xtitle('P.I.D. control','t','y');
xgrid(color('gray'));

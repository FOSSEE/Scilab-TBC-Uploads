clc;
//page 18
//problem 1.4

//u1(t)
t = [-5:0.0082:5];
u1(t<=0) = 0;
u1(t>0) = 1;

xlabel('t');
ylabel('u(t)')

subplot(131);
plot2d(t,u1);

//u2(t-T)
//Shifting the given signal by t units to the right, we get
//Let us assume the amount of time to be shited is 3 units 
T = 3;

t = [-5:0.0082:5];
u2(t<=T) = 0;
u2(t>T) = 1;

xlabel('t');
ylabel('u(t-T)')

subplot(132);
plot2d(t,u2);


//u(t) - u(t - T)

t = [-5:0.0082:5];
u3 = u1 - u2;

xlabel('t');
ylabel('u(t) - u(t-T)')

subplot(133);
plot2d(t,u3);





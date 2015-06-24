clc;
//page 18
//problem 1.3

//u1(T) vs T
T = [-5:0.0082:5];
u1(T<=0) = 0;
u1(T>0) = 1;
xlabel('T');
ylabel('u(T)')

subplot(131);
plot2d(T,u1);

//u2(T-t) vs T
//Shifting the given signal by t units to the right, we get
//Let us assume the amount of time to be shited is 3 units 
t = 3;

T = [-5:0.0082:5];
u2(T<=t) = 0;
u2(T>t) = 1;
xlabel('T');
ylabel('u(T - t)')

subplot(132);
plot2d(T,u2);

//u(t - T) = u(-(T - t))

T = [-5:0.0082:5];
u3(T>=t) = 0;
u3(T<t) = 1;
xlabel('T');
ylabel('u(t - T)')

subplot(133);
plot2d(T,u3);

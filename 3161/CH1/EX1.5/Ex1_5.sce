clc;
//page 18
//problem 1.5

//V1(t) = u(t) - u(t - 5)
t = [-5:0.1:5];
V1(t<=0) = 0;
V1(t>0) = 1;

xlabel('t');
ylabel('V1(t)')
subplot(121);
plot2d(t,V1);


//V2(t) = 2*t*(u(t) - u(t - 3))
t = [0:0.1:3];
V2 = 2*t;

xlabel('t');
ylabel('V2(t)')
subplot(122);
plot2d(t,V2);

//Autocorrelation R12(0) = R

R = integrate('2*t','t',0,3);

E1 = integrate('1','t',0,5);

//In the textbook, E2 has been computed as 18 instead of 36
E2 = integrate('4*t^2','t',0,3);

c = R/(E1*E2)^0.5;

disp(R,'The correlation term R12(0) is ');
disp(E1,'The autocorrelation term R1(0) is ');
disp(E2,'The autocorrelation term R2(0) is ');




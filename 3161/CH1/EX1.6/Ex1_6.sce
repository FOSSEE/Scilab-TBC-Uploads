clc;
//page 19
//problem 1.6

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

//Autocorrelation R12(1) = Ra
//The range is t = 0 to 2, as signal V2(t) has been shifted left by one unit, V2(t-1)

Ra = integrate('2*(t+1)','t',0,2);

disp(Ra,'The correlation term R12(1) is ');

//Autocorrelation R12(-1) = Rb
//The range is t = 1 to 4, as signal V2(t) has been shifted right by one unit, V2(t+1)

Rb = integrate('2*(t-1)','t',1,4);

disp(Rb,'The correlation term R12(-1) is ');


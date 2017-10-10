// Example 32_21
clc;funcprot(0);
//Given data
// L=350+10t-t^2;

// Calculation
// Differentiating L with respect to t, we get 10-2t=0
t=10/2;// hrs
L_max=350+(10*t)-t^2;// The maximum load occurs at 5 th hour during the day in MW
t_0=0;
t_1=24;// Limits of integration
L_av=(1/24)*integrate('(350+(10*t)-t^2)','t',t_0,t_1);
F_l=L_av/L_max;// Load factor
printf('\nMaximum load,L_max=%0.0f MW \nLoad factor of the plant=%0.4f',L_max,F_l);
// Load duration curve is the representation of load with respect to time 
t=[0 1 2 3 4 5  6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24];// Time in hours
for(i=1:25)
    L(i)=((350+(10*t(i))-t(i)^2));
end
T=[0 12 24];
L_max=[L_max L_max L_max];
subplot(2,1,1);
plot(t',L,'g',T',L_max','--');
xlabel('t');
ylabel('L');
xtitle('Load curve');
// Load duration curve is the representation of load with respect to time is decending order.
T=[24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0];// Time in hours
for(j=1:25)
    L(j)=((350+(10*T(j))-T(j)^2));
end
subplot(2,1,2);
plot(t',L,'r');
xtitle('Load duration curve');
xlabel('t');
ylabel('L');


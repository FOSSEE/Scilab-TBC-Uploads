// Example 2_14
clc;funcprot(0);
//Given data
m=[1 2 3 4 5 6 7 8 9 10 11 12];// Month
D=[80 50 40 20 0 100 150 200 250 120 100 80];// Discharge in millions of m^3 per month
H=100;// Available head in m
n_o=80/100;// Overall efficiency of the generation 
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
// (a)
Q_a1=(D(1)+D(2)+D(3)+D(4)+D(5)+D(6)+D(7)+D(8)+D(9)+D(10)+D(11)+D(12))/12;// The average monthly flow in millions of m^3/month
m_1=[0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 11 11 12 12];// Month for hydrograph
D_1=[80 80 50 50 40 40 20 20 0 0 100 100 150 150 200 200 250 250 120 120 100 100 80 80 260];// Discharge in millions of m^3 per month
Q_a=[Q_a1,Q_a1];// Mean flow
m=[0,12];// month
xlabel('Month');
ylabel('Discharge in millions of m^3 per month');
subplot(2,1,1);
plot(m_1',D_1','b',m',Q_a','r-');
a=gca();
a.x_ticks.labels=["0","J","F","M","A","M","J","J","A","S","O","N","D"];
a.x_ticks.locations=[0;1;2;3;4;5;6;7;8;9;10;11;12];
legend('Hydrograph','Mean flow');
D=[0 20 40 50 80 100 120 150 200 220];// Discharge in millions of m^3 per month
M=[12 11 10 9 8 7 4 3 2 1];// Total number of months during which flow is available
for(i=1:10)
    T(i)=(M(i)/12)*100;
end
subplot(2,1,2);
xlabel('Percentage of time');
ylabel('Discharge in millions of cu.m.month');
plot(T,D','b');
legend('Flow duration curve');
m=((Q_a1*10^6)/(30*24*3600));// The average flow available in m^3/sec
P=(((Q_a1*10^6*1000*g*H)/(30*24*3600*1000))*(n_o/1000));// Average kW available in MW
printf('\nAverage kW available at the site=%0.3f MW',P);
// The answer provided in the textbook is wrong

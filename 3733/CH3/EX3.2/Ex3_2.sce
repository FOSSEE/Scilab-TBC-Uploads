// Example 3_2
clc;funcprot(0);
// Given data
m=[1 2 3 4 5 6 7 8 9 10 11 12];// Month for load curve
R_a=[40 30 20 15 10 80 140 120 100 60 50 40];// The run off for river A is  given in millions of cu-m per month
R_b=[50 50 40 40 40 90 100 100 80 70 60 70];// The run off for river B is  given in millions of cu-m per month

// Calculation
Q_a1=R_a(1)+R_a(2)+R_a(3)+R_a(4)+R_a(5)+R_a(6)+R_a(7)+R_a(8)+R_a(9)+R_a(10)+R_a(11)+R_a(12);// Total flow from the river A  in millions of cu-cm/month
Q_a=Q_a1/12;// Average flow of the river A in cu-cm/month
Q_b1=R_b(1)+R_b(2)+R_b(3)+R_b(4)+R_b(5)+R_b(6)+R_b(7)+R_b(8)+R_b(9)+R_b(10)+R_b(11)+R_b(12);// Total flow from the river B  in millions of cu-cm/month
Q_b=Q_b1/12;// Average flow of the river B in cu-cm/month
m=[0 0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 11 11 12];// Month for load curve
R_a=[0 40 40 30 30 20 20 15 15 10 10 80 80 140 140 120 120 100 100 60 60 50 50 40 40];//The run off for river A is given in millions of cu-m per month for load curve
R_b=[0 50 50 50 50 40 40 40 40 40 40 90 90 100 100 100 100 80 80 70 70 60 60 70 70];//The run off for river B is given in millions of cu-m per month for load curve
Q_A=[Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a Q_a];// Average flow of the river A in cu-cm/month for plot
Q_B=[Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b Q_b];// Average flow of the river B in cu-cm/month for plot
subplot(2,1,1);
xtitle('Fig.Prob.3.1.(a)');
ylabel('Millions of Cu.m/month')
plot(m',R_a','b',m',R_b','g',m',Q_A','r-.',m',Q_B','b-.');
a=gca();
a.x_ticks.labels=["0","J","F","M","A","M","J","J","A","S","O","N","D"];
a.x_ticks.locations=[0;1;2;3;4;5;6;7;8;9;10;11;12];
legend(['Hydrograph of river A','Hydrograph of river B','Average flow for River A','Average flow for River B'],"in_upper_left");
//(a)
// From Fig.Prob.3.2(a)
Q_B=72;// At 40% of time,the flow of river B in in millions of cu-m per month
Q_A=61;// At 40% of time,the flow of river A in in millions of cu-m per month
Q_r=(Q_B/Q_A);// Flow ratio 
dQ_r=(Q_r-1)*100;// %

D_a=[10 15 20 30 40 50 60 70 80 90 100 110 120 140];// Discharge in millions of cu-m. per month
M_a=[12 11 10 9 8 6 5 4 4 2 3 2 2 1];// No.of months during which flow is available
for(i=1:14)
    T_a(i)=(M_a(i)/12)*100;
end
D_b=[40 50 60 70 80 90 100];// Discharge in millions of cu-m. per month
M_b=[12 9 6 5 4 3 2];// No.of months during which flow is available
for(j=1:7)
    T_b(j)=(M_b(j)/12)*100;
end
Q_a=[Q_a Q_a];// Average flow of the river A in cu-cm/month
Q_b=[Q_b Q_b];// Average flow of the river B in cu-cm/month
T=[0 100];// Time in percentage for plot
subplot(2,1,2);
xtitle('Fig.Prob.3.1.(b)');
plot(T_a,D_a','b',T_b,D_b','g',T',Q_a','r-.',T',Q_b','g-.');
legend('Flow duration curve for river A','Flow duration curve for river B','Average flow for River A','Average flow for River B');
printf('\n(a)The ratio of run off of river A and river B is %0.2f.',Q_r);
//(b)
// From Fig.Prob.3.2(b)
Q_A=23;// At 80% of time,the flow of river A in in millions of cu-cm per month
Q_B=48;// At 80% of time,the flow of river B in in millions of cu-cm per month
if(Q_B>Q_A)
    printf('\n(b)River B is preferable for runoff type plant.');
else
    printf('\n(b)River A is preferable for runoff type plant.');
end
//(c)
if(Q_b>Q_a)
    printf('\n(c)River B is preferable for storage type plant also.');
else
    printf('\n(c)River A is preferable for storage type plant also.');
end
//(d)
// From Fig.Prob.3.2(b)
disp('(d)The run off rate is same at 25%(90 cu-m/month) and 33.33% (80 cu-m/month) of the year.');

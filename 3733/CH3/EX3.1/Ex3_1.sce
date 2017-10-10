// Example 3_1
clc;funcprot(0);
// Given data
m=[1 2 3 4 5 6 7 8 9 10 11 12];// Month for load curve
R_a=[40 30 30 20 20 160 180 180 100 80 50 50];// The run off for river A is  given in millions of cu-m per month
R_b=[50 50 60 80 100 100 90 90 70 60 60 60];// The run off for river B is  given in millions of cu-m per month
H_a=80;// The head available for river A in m
H_b=82;// The head available for river B in m

// Calculation
m=[0 0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 11 11 12 12];// Month for load curve
R_a=[0 40 40 30 30 30 30 20 20 20 20 160 160 180 180 180 180 100 100 80 80 50 50 50 50 190];//The run off for river A is given in millions of cu-m per month for load curve
R_b=[0 50 50 50 50 60 60 80 80 100 100 100 100 90 90 90 90 70 70 60 60 60 60 60 60 190];//The run off for river B is given in millions of cu-m per month for load curve
subplot(2,1,1);
xtitle('Fig.Prob.3.1.(a)');
plot(m',R_a','b',m',R_b','r');
a=gca();
a.x_ticks.labels=["0","J","F","M","A","M","J","J","A","S","O","N","D"];
a.x_ticks.locations=[0;1;2;3;4;5;6;7;8;9;10;11;12];
legend('Hydrograph of river A','Hydrograph of river B');
D_a=[20 30 40 50 80 100 160 180];// Discharge in millions of cu-m. per month
M_a=[12 10 8 7 5 4 3 2];// No.of months during which flow is available
D_b=[50 60 70 80 90 100];// Discharge in millions of cu-m. per month
M_b=[12 10 6 5 4 2];// No.of months during which flow is available
for(i=1:8)
    T_a(i)=(M_a(i)/12)*100;
end
for(j=1:6)
    T_b(j)=(M_b(j)/12)*100;
end
subplot(2,1,2);
xtitle('Fig.Prob.3.1.(b)');
plot(T_a,D_a','b',T_b,D_b','g');
legend('Flow duration curve for river A','Flow duration curve for river B');

//(a)
Q_a=(R_a(1)+R_a(2)+R_a(3)+R_a(4)+R_a(5)+R_a(6)+R_a(7)+R_a(8)+R_a(9)+R_a(10)+R_a(11)+R_a(12))/12;// The average flow per month of river A in  millions of cu-m. per month
Q_b=(R_b(1)+R_b(2)+R_b(3)+R_b(4)+R_b(5)+R_b(6)+R_b(7)+R_b(8)+R_b(9)+R_b(10)+R_b(11)+R_b(12))/12;// The average flow per month of river A in  millions of cu-m. per month
P_a=Q_a*H_a;// The power developed
P_b=Q_b*H_b;// The power developed
P_r=P_a/P_b;// Power ratio
if(P_a>P_b)
    printf('\n(a)As P_a>P_b,the river A is more suitable for storage type power plant');
else
    printf('\n(a)As P_b>P_a,the river B is more suitable for storage type power plant');
end
//(b)From Fig.Prob.3.1(a),The flow available for 85% of the time in year
Q_b=59.5;// millions of cu-m per month
Q_a=29;// millions of cu-m per month
P_b=Q_b*H_b;
P_a=Q_a*H_a;
if(P_b>P_a)
    printf('\n(b)The site of river B is more suitable than the site of river A for run-off river power plant');
else
    printf('\n(b)The river A is more suitable than the site of river B for run-off river power plant');
end
//(c)when 60% time of the year,the run off is required from both the rivers,thenfrom Fig.Prob.3.1(b),
Q_a=47;// millions of cu-m per month
Q_b=66;// millions of cu-m per month
Q_r=Q_a/Q_b;// Flow ratio
P_a=Q_a*H_a;// The power developed
P_b=Q_b*H_b;// The power developed
P_r=P_a/P_b;// Power ratio
printf('\n(c)Flow ratio=%0.3f \n   Power ratio=%0.3f',Q_r,P_r);
printf('\n(d)From Fig.Prob.3.1(b),At 43 percentage of time,the run off rate of both sites is same');
// The answer vary due to round off error


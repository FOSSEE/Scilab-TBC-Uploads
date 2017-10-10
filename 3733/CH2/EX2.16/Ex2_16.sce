// Example 2_16
clc;funcprot(0);
//Given data
m=[1 2 3 4 5 6 7 8 9 10 11 12];// Month
F=[100 50 20 80 10 10 190 40 30 200 170 80];// Flow in millions of cu-m-per month

// Calculation
Cv(1)=F(1);
Cv(2)=Cv(1)+F(2);// Millions of cu-m
Cv(3)=Cv(2)+F(3);// Millions of cu-m
Cv(4)=Cv(3)+F(4);// Millions of cu-m
Cv(5)=Cv(4)+F(5);// Millions of cu-m
Cv(6)=Cv(5)+F(6);// Millions of cu-m
Cv(7)=Cv(6)+F(7);// Millions of cu-m
Cv(8)=Cv(7)+F(8);// Millions of cu-m
Cv(9)=Cv(8)+F(9);// Millions of cu-m
Cv(10)=Cv(9)+F(10);// Millions of cu-m
Cv(11)=Cv(10)+F(11);// Millions of cu-m
Cv(12)=Cv(11)+F(12);// Millions of cu-m
m=[0 1 2 3 4 5 6 7 8 9 10 11 12];// Month
CV=[0 Cv(1) Cv(2) Cv(3) Cv(4) Cv(5) Cv(6) Cv(7) Cv(8) Cv(9) Cv(10) Cv(11) Cv(12)];// Cumulative volume in millions of cu-m
xlabel('Month');
ylabel('Millions of cu.m')
plot(m,CV,'b');
// From Fig.Prob(2.16),from the mass curve
Sc=80*10^6;// Storage capacity in m^3
sc=85*10^6;// Spill way capacity required in m^3
i=13;
j=1;
Q=((CV(i)-CV(j))/(m(i)-m(j)))*10^6;// The uniform discharge in m^3/month
// The required storage capacity for the uniform supply Q,
SC_u=233*10^6;// cu-m.
printf('\nThe required reservoir capacity=%0.0e m^3 \nSpill way capacity=%0.1e m^3 \nAverage flow capacity=%0.2e m^3/month \nRequired capacity of the reservoir fo the uniform supply=%0.2e cu-m',Sc,sc,Q,SC_u);

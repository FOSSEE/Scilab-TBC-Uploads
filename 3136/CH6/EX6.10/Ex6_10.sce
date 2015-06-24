clear all; clc;

disp("From table 6.1 at 1.25 SP,the rotating speeds for Q1=11172cfm and Q2=12103cfm are N1=474rpm and N2=483 rpm respectively")
Ns=474+[(483-474)*(12000-11172)]/[12103-11172]
printf(" Hence the rotating speed for the selected fan is determined by inetrpolation %0.0f rpm\n\n",Ns)

disp("Select a few data points around 482 rpm from table 6.1 as:")
Q=[14896 12103 11172  11172 10241 7448];
N=[490 448 436 474 466 360];
SP=[1.0 1.0 1.0 1.25 1.25 0.75];
BHP=[3.66 2.67 2.40 2.97 2.75 1.2];

disp(" Q(cfm)   N(rpm)   SP(in.wg)   BHP(hp)")
table=[Q' N' SP' BHP']
disp(table)

disp("Convert them into conditiond of 482 rpm according to the similarity laws,resulting in")
Q1=[14653 13021 12350 11360 10593 9972];
SP1=[0.967 1.16 1.22 1.29 1.34 1.34];
BHP1=[3.5 3.20 3.24 3.12 3.04 2.88];
table1=[Q1' SP1' BHP1']
disp(" Q(cfm)   SP(in.wg)   BHP(hp)")
disp(table1)

disp("The system curve can be calculated from the following table")

Q2=[10000 11000 12000 13000 14000];
H2=[0.87 1.05 1.25 1.47 1.70];

sqrQ2 = zeros(1,length(Q2));

for i = 1: length(Q2)
   

   sqrQ2(i) = [Q2(i)]^2;
    
end


table2=[Q2' H2']
disp("  Q(cfm)  H(in.wg)")
disp(table2)

disp("The system curve can be calculated from H versus Q^2. It is plotted as shown.")
//The system curve has not been provided in the book for this numerical. However they have mentioned that the parameters for the curve are H and Q^2,and as such has been plotted here.
plot(sqrQ2,H2)
xlabel("Q^2 ")
ylabel("H")
set(gca(),"grid",[1 1])
xtitle("System curve: H versus Q squared")






















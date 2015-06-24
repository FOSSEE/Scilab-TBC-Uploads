clc

//Let composition of mixture by volume be denoted by c1
//Let Final composition desired be denoted by c2

c1_H2=0.78;
c1_CO=0.22;

c2_H2=0.52;
c2_CO=0.48;

M_H2=2;
M_CO=28;

M=c1_H2*M_H2 + c1_CO*M_CO;

// Let x kg of mixture be removed and y kg of CO be added.

x=(c1_H2 - c2_H2)/c1_H2*M;
disp("Mass of mixture removed =")
disp(x)
disp("kg")

y=M_CO/M*x;
disp("Mass of CO added=")
disp(y)
disp("kg")
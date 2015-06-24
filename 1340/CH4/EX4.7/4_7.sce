clc;
k=5;
disp("N-m/rad",k,"Given value of K =");
printf("percentage overshoot =");
Os = 20;
disp(Os);
printf("settling time =");
Ts = 2;
disp(Ts);

zeta = (-log(Os/100)/sqrt((%pi^2)+(log(Os/100))^2));disp(zeta,"damping ratio =");
Wn = 4/(2*zeta);disp(Wn,"natural frequency =");
A = Wn^2;
disp(A,"K/J =");
B = 2*zeta*Wn;
disp(B,"D/J =");
j = k/A;
disp("kg-m^2",j,"value of J is =");
d = j*B;
disp("N-m-s/rad",d,"value of D is =");


clc
//initialization of new variables
clear
n = 0.012;
S = 1;
alpha = 1;//degrees
Z = 0.00005:0.05:5;
k = (5-0.00005)/0.05 +1;
for i = 1:k
    R_h(i) = S/((1/Z(i))+2*Z(i));
    U_av(i) = (1/n)*(R_h(i)^(2/3))*sqrt(tan(alpha*%pi/180));
    Q(i) = U_av(i)*S;
    b(i) = S/Z(i);
    AR(i) = Z(i)/b(i);
end

plot(AR(1:46),U_av(1:46));
xlabel('Aspect ratio');
ylabel('Q (m^3/s)');

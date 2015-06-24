clear
clc
//Given
t=[0 20 40 60 120 180 300];
C_A=[10 8 6 5 3 2 1];
CAo=10;
//Guessing 1st order kinetics
//This means log(CAo/C_A) vs t should give a straight line
for i=1:7
    k(i)=log(CAo/C_A(i));
    CA_inv(i)=1/C_A(i);
end
//plot(t,k)
//This doesn't give straight line.
//Guessing 2nd Order Kinetics so 
//1/C_A vs t should give a straight line
//plot(t,CA_inv)
//Again this doesn't give a straight line
//Guessing nth order kinetics and using fractional life method with F=80%
//log Tf=log(0.8^(1-n)-1/(k(n-1)))+(1-n)logCAo
//plot(t,C_A)

//Picking different values of CAo
//Time needed for 3 runs,,from graph
T=[18.5;23;35];
CAo=[10;5;2];
for i=1:3
    CA(i)=0.8*CAo(i);
    log_Tf(i)=log10(T(i));
    log_CAo(i)=log10(CAo(i));
end
plot(log_CAo,log_Tf)
xlabel('log CAo');ylabel('log t');
coeff1=regress(log_CAo,log_Tf);
n=1-coeff1(2);
printf("From graph we get slope and intercept for calculating rate eqn")
k1=((0.8^(1-n))-1)*(10^(1-n))/(18.5*(n-1));
printf("\n The rate equation is given by %f",k1)
printf("CA^1.4 mol/litre.sec")

clear
clc
//Time in min
T=[0;5;10;15;20;25;30;35];
//Tracer Concentration in gm/litre
Cpulse=[0;3;5;5;4;2;1;0];
//Initialization
sum1=0;
sum2=0;sum3=0;
for i=1:8
    sum1=sum1+Cpulse(i);
    sum2=sum2+Cpulse(i)*T(i);
    sum3=sum3+Cpulse(i)*T(i)*T(i);
end
///Mean(min) of continuous distribution
t=sum2/sum1;
//Variance(min^2) of continuous distribution
sigma_sqr=(sum3/sum1)-((sum2/sum1))^2;
sigmatheta_sqr=sigma_sqr/t^2;
//Calculating vessel dispersion number
//Using eqn 13.let d/uL=m
for m=0.1:0.001:0.2
    sigmat_sqr=2*m-2*(m^2)*(1-exp(-(1/m)));
    if sigmat_sqr >= sigmatheta_sqr
        break;
          end
end
printf("\n The vessel dispersion number is %f",m)
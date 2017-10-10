clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.10   Page 311 \n'); //Example 5.10
// Using Explicit Finite Difference method, determine temperatures at the surface and 150 mm from the surface after an elapsed time of 2 min
// Repeat the calculations using the Implicit Finite Difference Method
// Determine the same temperatures analytically

//Operating Conditions

delx = .075;              //[m] Metre
T = 20+273;       //[K] Temperature
q = 3*10^5;             //[W/m^3] Volumetric Rate

//From Table A.1 copper 300 K
k = 401;            //[W/m.K] Conductivity
a = 117*10^-6;      //[m^2/s]

//By using stability criterion reducing further Fourier Number
Fo = (2)^-1;
//By definition
delt = Fo*delx^2/a;
format('v',5);

//System of Equation for Explicit Finite difference Fo = 1/2
Tv1(1,:) = [20 20 20 20 20];                //At p=0 Initial Temperature t - 20 degC
for i = 2:6
    Tv1(i,1) = 56.1 + Tv1(i-1,2);
    Tv1(i,2) = (Tv1(i-1,3) + Tv1(i-1,1))/2;
    Tv1(i,3) = (Tv1(i-1,4) + Tv1(i-1,2))/2;
    Tv1(i,4) = (Tv1(i-1,5) + Tv1(i-1,3))/2;
    Tv1(i,5) = Tv1(i-1,5);
end
for j=1:6
    T1(j,:)=[j-1 delt*(j-1) Tv1(j,:)];
end
printf("\n\n  EXPLICIT FINITE-DIFFERENCE SOLUTION FOR Fo = 1/2\n    p     t(s)    T0      T1      T2      T3     T4\n");
disp(T1);
printf('\n Hence after 2 min, the surface and the desirde interior temperature T0 = %.2f degC and T2 = %.1f degC',T1(6,3),T1(6,5));

//By using stability criterion reducing further Fourier Number
Fo = (4)^-1;
//By definition
delt = Fo*delx^2/a;
//System of Equation for Explicit Finite difference for Fo = 1/4
Tv2(1,:) = [20    20    20    20    20    20    20    20    20];            //At p=0 Initial Temperature t - 20 degC
for i=2:11
    Tv2(i,1)=1/2*(q*delx/k  + Tv2(i-1,2)) +Tv2(i-1,1)/2;
    Tv2(i,2)=(Tv2(i-1,1)+Tv2(i-1,3))/4 + Tv2(i-1,2)/2;
    Tv2(i,3)=(Tv2(i-1,2)+Tv2(i-1,4))/4 + Tv2(i-1,3)/2;
    Tv2(i,4)=(Tv2(i-1,3)+Tv2(i-1,5))/4 + Tv2(i-1,4)/2;
    Tv2(i,5)=(Tv2(i-1,4)+Tv2(i-1,6))/4 + Tv2(i-1,5)/2;
    Tv2(i,6)=(Tv2(i-1,5)+Tv2(i-1,7))/4 + Tv2(i-1,6)/2;
    Tv2(i,7)=(Tv2(i-1,6)+Tv2(i-1,8))/4 + Tv2(i-1,7)/2;
    Tv2(i,8)=(Tv2(i-1,7)+Tv2(i-1,9))/4 + Tv2(i-1,8)/2;
    Tv2(i,9)= Tv2(i-1,9);
end
for j=1:11
    T2(j,:)=[j-1 delt*(j-1) Tv2(j,:)];
end
printf("\n\n  EXPLICIT FINITE-DIFFERENCE SOLUTION FOR Fo = 1/4\n    p     t(s)     T0      T1      T2      T3     T4       T5      T6      T7     T8\n")
disp(T2)
printf('\n Hence after 2 min, the surface and the desirde interior temperature T0 = %.2f degC and T2 = %.1f degC',T2(11,3),T2(11,5))


//(b)Implicit Finite Difference solution
Fo = (4)^-1;
//By definition
delt = Fo*delx^2/a;

T3 = rand(6,11);            //Random Initital Distribution
function[Tm]=Tvalue(i)
function[f]=F(x)
    f(1)= 2*x(1) - x(2) - q*delx/k - T3(i,3);
    f(2)= -x(1)+4*x(2)-x(3)-2*T3(i,4);
    f(3)= -x(2)+4*x(3)-x(4)-2*T3(i,5);
    f(4)= -x(3)+4*x(4)-x(5)-2*T3(i,6);
    f(5)= -x(4)+4*x(5)-x(6)-2*T3(i,7);
    f(6)= -x(5)+4*x(6)-x(7)-2*T3(i,8);
    f(7)= -x(6)+4*x(7)-x(8)-2*T3(i,9);
    f(8)= -x(7)+4*x(8)-x(9)-2*T3(i,10);
    f(9)= -x(9)+T3(i,11);
    funcprot(0);
endfunction
x = [30 30 30 30 30 30 30 30 30];
Tm = fsolve(x,F);
    funcprot(0)
endfunction 

//At p=0 Initial Temperature t - 20 degC
T3(1,:) = [0 delt*0 20    20    20    20    20    20    20    20    20];
for j=1:5
    T3(j+1,:)=[j delt*j Tvalue(j)];
end
printf("\n\n  IMPLICIT FINITE-DIFFERENCE SOLUTION FOR Fo = 1/4\n    p     t(s)     T0      T1      T2      T3     T4       T5      T6      T7     T8\n");
disp(T3);
printf('\n Hence after 2 min, the surface and the desirde interior temperature T0 = %.2f degC and T2 = %.1f degC',T3(6,3),T3(6,5));

t = 120;        //[seconds]
//(c) Approximating slab as semi-infinte medium
Tc = T -273 + 2*q*(a*t/%pi)^.5/k;

//At interior point x=0.15 m
x =.15;        //[metre]
//Analytical Expression
Tc2 = T -273 + 2*q*(a*t/%pi)^.5/k*exp(-x^2/(4*a*t))-q*x/k*[1-erf(.15/(2*sqrt(a*t)))];

printf(' \n\n (c) Approximating slab as a semi infinte medium, Analytical epression yields \n At surface after 120 seconds = %.1f degC \n At x=.15 m after 120 seconds = %.1f degC',Tc,Tc2);
//END
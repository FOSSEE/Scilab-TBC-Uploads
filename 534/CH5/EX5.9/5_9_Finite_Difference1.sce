clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.9   Page 305 \n'); //Example 5.9
// Temperature distribution 1.5s after a change in operating power

//Operating Conditions

L = .01;              //[m] Metre
Tsurr = 250+273;       //[K] Temperature
h = 1100;              //[W/m^2.K] Heat Convective Coefficient
q1 = 10^7;             //[W/m^3] Volumetric Rate
q2 = 2*10^7;             //[W/m^3] Volumetric Rate
k = 30;                //[W/m.K] Conductivity
a = 5*10^-6;            //[m^2/s]

delx = L/5;        //Space increment for numerical solution
Bi = h*delx/k;        //Biot  Number
//By using stability criterion for Fourier Number
Fo = (2*(1+Bi))^-1;
//By definition
t = Fo*delx^2/a;
printf('\n As per stability criterion delt = %.3f s, hence setting stability limit as .3 s.',t)
// Using Finite time increment of .3s
delt = 1*.3;
Fo1 = a*delt/delx^2;
x = [0 delx delx*2 delx*3 delx*4 delx*5];

//At p=0 Using equation 3.46
for i = 1: length(x)
T(1,i) = q1*L^2/(2*k)*(1-x(i)^2/L^2)+Tsurr + q1*L/h -273 ;
end
//System of Equation in Finite Difference method
for j = 2:6
    T(j,1)=Fo1*(2*T(j-1,2)+q2*delx^2/k) + (1 -2*Fo1)*T(j-1,1);
    T(j,2)=Fo1*(T(j-1,1)+T(j-1,3)+q2*delx^2/k) + (1 -2*Fo1)*T(j-1,2);
    T(j,3)=Fo1*(T(j-1,2)+T(j-1,4)+q2*delx^2/k) + (1 -2*Fo1)*T(j-1,3);
    T(j,4)=Fo1*(T(j-1,3)+T(j-1,5)+q2*delx^2/k) + (1 -2*Fo1)*T(j-1,4);
    T(j,5)=Fo1*(T(j-1,4)+T(j-1,6)+q2*delx^2/k) + (1 -2*Fo1)*T(j-1,5);
    T(j,6)=2*Fo1*(T(j-1,5)+Bi*(Tsurr-273)+q2*delx^2/(2*k)) + (1 -2*Fo1-2*Bi*Fo1)*T(j-1,6);
end
//At p=infinity Using equation 3.46
x = [0 delx delx*2 delx*3 delx*4 delx*5];
for i = 1:length(x)
T(7,i) = q2*L^2/(2*k)*(1-x(i)^2/L^2)+Tsurr+q2*L/h-273;
end

for j= 1:6
Tans(j,:) = [j-1 delt*(j-1) T(j,:)];
end

printf("\n\n Tabulated Nodal Temperatures \n\n    p     t(s)    T0       T1        T2       T3       T4      T5\n");
format('v',6);
disp(Tans);
printf("   inf    inf    %.1f    %.1f    %.1f    %.1f    %.1f    %.1f",T(7,1),T(7,2),T(7,3),T(7,4),T(7,5),T(7,6));

//END
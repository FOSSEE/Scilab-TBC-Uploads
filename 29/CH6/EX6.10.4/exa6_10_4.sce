//Caption:time_response_for_unit_step_function
//example 6.10.4
//page 172
s=%s;
syms t;
a=(s+4);
b=1/(s*(s+2));
c=(a*b); //in series
d=0.5;
e=c/.d
f=1;
g=e/.f;
disp(g,"C(s)/R(s)=");
disp('for unit step response R(s)=1/s,  so'); 
h=g*(1/s);
disp(h,"C(s)=");
[A]=pfss(h);
A(1)=(1/s)
F1=ilaplace(A(1),s,t)
//A(2)can be written as: A(2)=a1+a2
a1=-1/(4*(6+3.5*s+s^2));
a2=(-(s+1.75)/(6+3.5*s+s^2));           
F2=ilaplace(a1,s,t);
F3=ilaplace(a2,s,t);
//now multiplying by their coefficient
F1=(2/3)*F1;
F2=(1/6)*F2;
F3=(2/3)*F3;
//after adding F1,F2 and F3 and simplyfying we get time response which is denoted by 'c(t)' 
disp('c(t)=((2-(%e^(-1.75*t)*(2*cos(1.71*t)-0.29*sin(1.71*t))))/3');//time_response
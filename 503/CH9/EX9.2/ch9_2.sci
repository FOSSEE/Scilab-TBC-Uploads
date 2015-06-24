//to calculate torque,resitance to be added to rotor ckt

clc;
f=50;
P=6;
n_s=120*f/P;
w_s=2*%pi*n_s/60;
n=875;
s_maxT=(n_s-n)/n_s;
R_2=.25;
X_2=R_2/s_maxT;
T_max=10;
//v=V/a
v=sqrt((T_max*w_s*X_2)/(3*.5));
T=((3)*v^2*(R_2/s))/(w_s*((R_2/s)^2+(X_2)^2));
disp(T,'torque(Nm)');

//from eqn(T_start/T_max)=(R2+Rext)*(X2/.5)/((R2+Rext)^2+X2^2)
//after solving
//Rt^2-6.67*Rt+4=0
function [x]=quad(a,b,c)
    d=sqrt(b^2-4*a*c);
    x1=(-b+d)/(2*a);
    x2=(-b-d)/(2*a);
    if(x1>x2)
        x=x2;
    else
        x=x1;
    end
endfunction
Rt=quad(1,-6.67,4);
r2=.25;
disp(Rt-r2,'external resistance(ohm)');

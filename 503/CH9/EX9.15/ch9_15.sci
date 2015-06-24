//to calculate the min resistance to be added and speed of the motor

clc;
V=400;
a=2.5;
X2=.4;
R2=0.08;
n_s=750;
w_s=2*%pi*n_s/60;
T=250;
//T=(3/w_s)*((V/sqrt(3))/a)*R2t/(R2t^2+X2^2);
//after solving
//R2t^2-1.304*R2t+0.16=0
function [x1,x2]=quad(a,b,c)
    d=sqrt(b^2-4*a*c);
    x1=(-b+d)/(2*a);
    x2=(-b-d)/(2*a);
endfunction
[x1 x2]=quad(1,-1.304,0.16);
    if(x1>x2)
        R2t=x2;
    else
        R2t=x1
    end
Rext=R2t-R2;
disp(Rext,'external resistance(ohm)');

//T=(3/w_s)*((V/sqrt(3))/a)*(R2t/s)/((R2t/s)^2+X2^2);
//after solving
//(R2t/s)^2-1.304*(R2t/s)+0.16=0
[x1 x2]=quad(1,-1.304,0.16);
s=x2/x1;
n=n_s*(1-s);
disp(n,'speed(rpm)');

//T=(3/w_s)*((V/sqrt(3))/a)*(R2/s)/((R2/s)^2+X2^2);
//after solving
//(R2/s)^2-1.304*(R2/s)+0.16=0
[x1 x2]=quad(1,-1.304,0.16);
R2=0.08;
s1=R2/x1;
s2=R2/x2;
if(s1>s2)
        ss=s2;
    else
        ss=s1
    end
n=n_s*(1-ss);
disp(n,'speed(rpm)');

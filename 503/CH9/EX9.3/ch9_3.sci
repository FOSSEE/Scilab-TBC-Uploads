//to find slip at max torque,full load slip and rotor current at starting

clc;
//Tfl=(3/w_s)*(V^2*Rs/s_fl)/((R2/s_fl)^2+X2^2);    (i)
//Ts=(3/w_s)*(V^2*R2)/(R2^2+X2^2);    (ii)
//Tmax=(3/w_s)*(.5*V^2)/X2^2;    (iii)
//Tmax/Ts=2;    k=R2/X2;    (iii)/(ii)and solving
//k^2-4*k+1=0;
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
k=quad(1,-4,1);
disp(k,'s_max_T');

//(iii)/(i)and solving
//s_fl^2-1.072*s_fl+.072=0
s_fl=quad(1,-1.072,.072);
disp(s_fl,'s_fl');

//a=I2_start/I2_fullload
a=sqrt((k/s_fl)^2+1)/(k^2+1);
disp(a,'I2_start/I2_fullload');
clear;
clc;
funcprot(0);

//function to calculate blade cavitation coefficient
function [res] = fun(sigmab,k,omega_ss)
    res = (sigmab^2)*(1 + sigmab)- (((3.42*k)^2)/(omega_ss^4));
endfunction

//given data
Q = 25;//flow rate in dm^3/s
omega = 1450;//rotational speed in rev/min
omega_ss = 3;//max. suction specific speed in rad/sec
r = 0.3;//inlet eye radius ratio
g = 9.81;//in m/s^2

//Calculations
k = 1-(r^2);
sigmab = 0.3;//initial guess
res = fun(sigmab,k,omega_ss);//initial value
i = 0;
while (abs(res)>0.0001)
    if res>0.0 then
        sigmab = sigmab - 0.0001;
    elseif res<0.0
        sigmab = sigmab + 0.0001;
    end
    res = fun(sigmab,k,omega_ss);
end
phi = (sigmab/(2*(1+sigmab)))^0.5;
rs1 = ((Q*10^-3)/(%pi*k*(omega*%pi/30)*phi))^(1/3);
ds1 = 2*rs1;
cx1 = phi*(omega*%pi/30)*rs1;
Hs = (0.75*sigmab*cx1^2)/(g*phi^2);

//Results
printf('(i)The blade cavitation coefficient = %.3f',sigmab);
printf('\n (ii)The shroud radius at the eye = %.5f m\n The required diameter of the eye = %.1f mm',rs1,ds1*10^3);
printf('\n (iii)The eye axial velocity = %.3f m/s',cx1);
printf('\n (iv)The NPSH = %.3f m',Hs);

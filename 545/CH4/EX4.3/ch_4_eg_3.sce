clc
disp("the solution of e.g. 4.3 -->Double Pipe Heat Exchanger");
rho=1000, v=1, dia=2.4*10^-2, Cp=4184             //given data 
mdot=rho*v*%pi*dia^2/4
t1=mdot*Cp
U=200
Ts=250
z=0                 //initial values given
// dT/dz=U*pi*dia*(Ts-T)/(mdot*Cp)
function Tgrad=fr(z,T),
    Tgrad=U*%pi*dia*(Ts-T)/(mdot*Cp),
endfunction
T=20
for z=0:0.01:10,
    h=0.01                                    //step increment of 0.01
    k1=h*fr(z,T)
    k2=h*fr(z+h/2,T+k1/2)
    k3=h*fr(z+h/2,T+k2/2)
    k4=h*fr(z+h,T+k3)
    T=T+(k1+2*k2+2*k3+k4)/6
    if z==5 then T=T-(k1+2*k2+2*k3+k4)/6, 
        disp(T,"the value of T in deg Celsius at z=5 m using Runge Kutta method is");
    end
end
T=T-(k1+2*k2+2*k3+k4)/6                    //final value at z=10 m
disp(T,"the value of T in deg Celsius at z=10 m using Runge Kutta method is");
clc
disp("the solution of e.g. 4.5 -->Stirred Vessel with Coil Heater");
m=760                                         //given data
mdot=12/60
U_into_A=11.5/60
Cp=2.3
T1=25, Ts=150
t1=(mdot*Cp*T1+U_into_A*Ts)/(m*Cp)
t2=(mdot*Cp+U_into_A)/(m*Cp)
//using energy balance we know accumulation=input-output
//T is the temp. of fluid in stirred tank
function tgrade=fg(t,T);
     tgrade=(t1-t2*T),
endfunction
T=25
for t=0:1:3000,
    h=1                                    //step increment of 1 sec
    k1=h*fg(t,T)
    k2=h*fg(t+h/2,T+k1/2)
    k3=h*fg(t+h/2,T+k2/2)
    k4=h*fg(t+h,T+k3)
    T=T+(k1+2*k2+2*k3+k4)/6
    end
T=T-(k1+2*k2+2*k3+k4)/6                    //to get value at x=0.2
disp(T,"the value of T in deg C after 50 mins is");
T_steady=(mdot*Cp*T1+U_into_A*Ts)/(mdot*Cp+U_into_A)
disp(T_steady,"the steady state temp in deg C is");
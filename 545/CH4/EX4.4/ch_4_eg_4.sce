clc
disp("the solution of e.g. 4.4 -->Stirred Tank with Coil Heater")
vol=.5*.5*2                        //given data
rho=1000
m=vol*rho
vol_rate=.001
mdot=vol_rate*rho
out_A=1
U=200
Cp=4184
T1=20, Ts=250, T_exit=28                           //temp in Celsius
t1=(mdot*Cp*T1+U*out_A*Ts)/(m*Cp)                  //terms of the function
t2=(mdot*Cp+U*out_A)/(m*Cp)
//dt/dt=(mdot*Cp(T1-T)+Q_dot)/m*Cp
function tgrad=fv(tm,T),
    tgrad=t1-t2*T
endfunction
T=20                                             //initial value
funcprot(0)
for tm=0:1:5000,
    h=1                                    //step increment of 1 sec
    k1=h*fv(tm,T)
    k2=h*fv(tm+h/2,T+k1/2)
    k3=h*fv(tm+h/2,T+k2/2)
    k4=h*fv(tm+h,T+k3)
    e1=abs(T-T_exit)
    if e1<1e-3 then disp(tm,"the time at which exit temp. in sec. is 28 C is")
    end
    T=T+(k1+2*k2+2*k3+k4)/6
    end
T=T-(k1+2*k2+2*k3+k4)/6                   //final  steady state temp.
disp(T,"the value of steady Temp in Celsius is");
clc
disp("the solution of eg 4.10 -->Series of Stirred Tanks with Coil Heaters")

Cp=2000,A=1,U=200,m=1000,mdot=2,Ts=250                 //given data
T0=20, T1=0, T2=0, T3=0

//from energy balances for the tanks we have accumulation=inlet-outlet
T1_steady=(mdot*Cp*(T0)+U*A*(Ts))/(mdot*Cp+U*A)
disp(T1_steady,"the steady state temperature of tank 1 is");
T2_steady=(mdot*Cp*(T1_steady)+U*A*(Ts))/(mdot*Cp+U*A)
disp(T2_steady,"the steady state temperature of tank 2 is");
T3_steady=(mdot*Cp*(T2_steady)+U*A*(Ts))/(mdot*Cp+U*A)
disp(T3_steady,"the steady state temperature of tank 3 is");
final_T3=.99*T3_steady
function dT1_by_dt=f1(t,T1,T2,T3),
    dT1_by_dt=(mdot*Cp*(T0-T1)+U*A*(Ts-T1))/(m*Cp),
endfunction
function dT2_by_dt=f2(t,T1,T2,T3),
    dT2_by_dt=(mdot*Cp*(T1-T2)+U*A*(Ts-T2))/(m*Cp),
endfunction
function dT3_by_dt=f3(t,T1,T2,T3),
    dT3_by_dt=(mdot*Cp*(T2-T3)+U*A*(Ts-T3))/(m*Cp),
endfunction
T1=20,T2=20,T3=20
//solving by Newton's Method
for t=0:1:10000,
    h=1                                    //step increment of 1
    k1=h*f1(t,T1,T2,T3)
    l1=h*f2(t,T1,T2,T3)
    m1=h*f3(t,T1,T2,T3)
    k2=h*f1(t+h/2,T1+k1/2,T2+l1/2,T3+m1/2)
    l2=h*f2(t+h/2,T1+k1/2,T2+l1/2,T3+m1/2)
    m2=h*f3(t+h/2,T1+k1/2,T2+l1/2,T3+m1/2)
    k3=h*f1(t+h/2,T1+k2/2,T2+l2/2,T3+m2/2)
    l3=h*f2(t+h/2,T1+k2/2,T2+l2/2,T3+m2/2)
    m3=h*f3(t+h/2,T1+k2/2,T2+l2/2,T3+m2/2)
    k4=h*f1(t+h,T1+k3,T2+l3,T3+m3)
    l4=h*f2(t+h,T1+k3,T2+l3,T3+m3)
    m4=h*f3(t+h,T1+k3,T2+l3,T3+m3)
    T1=T1+(k1+2*k2+2*k3+k4)/6
    T2=T2+(l1+2*l2+2*l3+l4)/6
    e1=abs(T3-final_T3)
    if e1<1e-3 then disp(t,"the approx. time when Temperature in 3rd tank is 99% of steady value is"); break
    end
    T3=T3+(m1+2*m2+2*m3+m4)/6
end
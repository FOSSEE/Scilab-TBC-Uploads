

// Variable Declaration
x = 0.25        //Transient reactance(p.u)
E = 1.0         //e.m.f of finite generator behind transient reactance(p.u)
x_T = 0.1       //Reactance of transformer(p.u)
x_L = 0.4       //Reactance of one line(p.u)
P_i = 0.7       //Pre-fault power(p.u)

// Calculation Section
X_T = x+x_T+(x_L/2)                 //Transfer reactance at pre-fault state(p.u)
P_m = E**2/X_T                      //Amplitude of power angle curve at pre-fault state(p.u)
X_T1 = 1.45                         //Transfer reactance b/w finite generator & infinite bus at faulty state(p.u).Refer texbook problem for figure
P_m1 = E**2/X_T1                    //Amplitude of power angle curve at faulty state(p.u)
r1 = X_T/X_T1
X_T2 = x+x_T+x_L                    //Transfer reactance for post fault state(p.u)
r2 = X_T/X_T2
P_m2 = r2*P_m
delta_0 = asin(P_i/P_m)        //Radians
delta_1 = asin(P_i/(r2*P_m))   //Radians
delta_m = %pi - delta_1         //Radians
delta_c = 0.7                       //Specified value(radians)

function ans = integrand1(delta)
    ans = r1*P_m*sin(delta)
endfunction    
a = intg(delta_0, delta_c,integrand1)

A_acc = P_i*(delta_c-delta_0) - a 

function ans = integrand2(delta)
    ans = r2*P_m*sin(delta)
endfunction
    
b = intg(delta_c, delta_m,integrand2)
A_dec = b - P_i*(delta_m-delta_c)
cos_delta_cr = ((delta_m-delta_0)*sin(delta_0)-r1*cos(delta_0)+r2*cos(delta_m))/(r2-r1)
delta_cr = acos(cos_delta_cr)*180/%pi

// Result Section
if(A_acc < A_dec) then
    printf('System is Stable')
    stability = A_dec/A_acc
    printf('Margin of stability , K = %.2f' ,stability)
else
    printf('System is not stable')
end    
printf('Critical clearing angle for a certain pre-fault power = %.2f°' ,delta_cr)
printf('Critical clearing time will be known from circuit-breaker specifications')


// Variable Declaration
x = 0.25        //Transient reactance(p.u)
E = 1.0         //e.m.f of finite generator behind transient reactance(p.u)
x_T = 0.1       //Reactance of transformer(p.u)
x_L = 0.4       //Reactance of one line(p.u)
P_i = 0.25      //Pre-fault power(p.u)

// Calculation Section
X_T = x+x_T+(x_L/2)                 //Transfer reactance at pre-fault state(p.u)
P_m = E**2/X_T                      //Amplitude of power angle curve at pre-fault state(p.u)
X_T1 = 1.45                         //Transfer reactance b/w finite generator & infinite bus at faulty state(p.u).Refer texbook problem for figure
P_m1 = E**2/X_T1                    //Amplitude of power angle curve at faulty state(p.u)
r1 = X_T/X_T1
delta_0 = asin(P_i/P_m)        //Radians
delta_1 = asin(P_i/(r1*P_m))   //Radians
delta_m = %pi - delta_1         //Radians

function ans = integrand1(delta)
    ans = r1*P_m*sin(delta)
endfunction
a = intg(delta_0, delta_1,integrand1)

A_acc = P_i*(delta_1-delta_0) - a 

function ans = integrand2(delta)
    ans = r1*P_m*sin(delta)
endfunction    

b = intg( delta_1, delta_m,integrand2)
A_dec = b - P_i*(delta_m-delta_1)
limit = 0.5648                      //Obtained by iterations.Refer textbook.Here assigned directly.


// Result Section
if(A_acc < A_dec) then
    printf('System is Stable')
    stability = A_dec/A_acc
    printf('Margin of stability = %.2f' ,stability)
else
    printf('System is not stable')
end    
printf('Transient stability limit = %.4f p.u' ,limit)
printf('\nNOTE : ERROR : angle delta_0 = 7.9° = 0.13788 radian not 0.014 radian as in textbook')

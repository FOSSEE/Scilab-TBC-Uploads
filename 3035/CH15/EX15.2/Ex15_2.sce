
// Variable Declaration
V = 1.0         //Infinite bus voltage(p.u)
E = 1.0         //e.m.f of finite generator behind transient reactance(p.u)
X_T = 0.8       //Transfer reactance(p.u)
P_i = 0.5       //Input power(p.u)
P_i_d = 0.8     //p.u
P_0 = 0.5       //Output power(p.u)
P = 0.5         //Power(p.u)

// Calculation Section
P_m = E*V/X_T                       //Amplitude of power angle curve(p.u)
delta_0 = asin(P_i/P_m)        //Radians
delta = asin(P_i_d/P_m)        //Radians
delta_m = %pi-delta             //Radians
A_acc = P_i_d*(delta-delta_0)-P_m*(cos(delta_0)-cos(delta))   //Possible area of a// Result Sectioneleration
A_dec = P_m*(cos(delta)-cos(delta_m))-P_i_d*(delta_m-delta)   //Possible area of deceleration

// Result Section
if (A_acc < A_dec) then
    printf('System is stable')
    stability = A_dec/A_acc
    printf('Margin of stability = %.2f' ,stability)
else
    printf('System is not stable')
end

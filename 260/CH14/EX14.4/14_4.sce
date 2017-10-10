//Eg-14.4
//pg-586

clear
clc
close()

//Using Dx(delta x) = 0.25 and using the Boundary Condition 1, we get
//     3*T0 - 4*T1 + T2 = 0;

//From Boundary Condition 2, we get
//    T2 - 4*T3 + 3.25*T4 = 75;

//We have 5 equations and 5 Unknowns 

A = [1 -2 1 0 0;0 1 -2 1 0;0 0 1 -2 1;3 -4 1 0 0;0 0 1 -4 3.25];

B = [-3.125;-3.125;-3.125;0;75];

T = inv(A)*B;

for(i = 1:5)
    printf('T%f = %f\n',i-1,T(i))
end


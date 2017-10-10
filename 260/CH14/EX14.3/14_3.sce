//Eg-14.3
//pg-583

clear
clc
close()

//Analytically solving the given equation using central difference formula we get 3 equations at 3 internal points

// At point 1    T0 - 2*T1 + T2 = -3.125    (1)
// At point 2    T1 - 2*T2 + T3 = -3.125    (2)
// At point 3    T2 - 2*T3 + T4 = -3.125    (3)

// Using BC 1     T-1 = T1
// Using BC 2     T5 = T3 - 0.25*T4 + 75;

// using BC 1 in (1), we get     T1 - T0 = -1.5625    (4)
// using the value of T5 in the BC gives     2*T3 - 2.25*T4 = -78.125    (5)

//Solving these equations gives the values of T at different points

A = [1 -2 1 0 0;0 1 -2 1 0;0 0 1 -2 1;1 -1 0 0 0;0 0 0 2 -2.25];
B = [-3.125;-3.125;-3.125;1.5625;-78.125];

X = inv(A)*B;

x = 0:0.25:1;

plot(x,X,'ks')

//Analytically

L = 1;
x1 = 0:0.01:1;
T = 300 + 50*L^2/(2)*(1-(x1/L)^2 + 2*2);

plot(x1,T)

xlabel('x(m)')
ylabel('T(K)')
legend('FD solution','Analytical Solution')
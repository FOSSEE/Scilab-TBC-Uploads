//Variable Declaration:
syms A
syms B
syms r
syms C

//Calculation:
res = solve([A + B*log(2)-log(3),A + B*log(4)-log(12)],[A,B])
A = -0.2877
B = round(float(res[B]))
kA = round(exp(A),2)
a = B

//Result:
disp("The equation for rate of reaction is: %f kA*C**a ")
disp(-r)

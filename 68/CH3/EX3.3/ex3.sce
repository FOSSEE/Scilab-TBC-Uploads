//Example 3.3 : Evaluating junction scaling constant
//i-I_S*exp(v/(n*V_T)) implies I_S=i*exp(-v/(n*V_T))
n=1;
i=10^-3; // (A)
v=700; // (V)
V_T=25; // (V)
I_S=i*exp(-v/(n*V_T))
disp(I_S,"I_S (A) for n=1")
n=2;
I_S=i*exp(-v/(n*V_T))
disp(I_S,"I_S (A) for n=2")
disp("These values implies I_S is 1000 times greater ")
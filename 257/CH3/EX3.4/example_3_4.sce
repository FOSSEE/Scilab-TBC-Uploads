//laplace transform of unit impulse response is transfer function
syms s t

y=laplace(%e^(-4*t),t,s)
disp(y,"transfer function=")
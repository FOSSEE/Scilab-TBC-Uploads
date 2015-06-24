syms s t
u=integ(exp(-s*t),t,0,%inf)
delta=s*u-1;
disp(u,"unilateral transform of u(t)")
disp(delta,"unilateral transform of delta(t)")
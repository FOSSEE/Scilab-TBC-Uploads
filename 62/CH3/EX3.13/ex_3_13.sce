syms t s a w
// given u(t)<-->1/s
//delta(t)=diff(u(t))
u=laplace(1);
d=s*u
disp(d,"delta(t) <-->")
d1=s*d
disp(d1,"diff(delta(t)) <-->")
tu=-diff(u,s)
disp(tu,"t*u(t) <-->")
eu=laplace(%e^-(a*t))
disp(eu,"e^-a*t*u(t) <-->")
teu=-diff(eu,s)
disp(teu,"t*e^-a*t*u(t) <-->")
cu=laplace(cos(w*t))
disp(cu,"cos(w0*t)*u(t) <-->")
ecu=laplace(%e^(-a*t)*cos(w*t))
disp(tu,"e^(-a*t)*cos(w0*t)*u(t) <-->")

        //    PG (334)

//    dy/dt=-y
function ydot=f(y,t),ydot=-y,
endfunction
y0=0;t0=0;t=0:1:%pi;
y=ode(y0,t0,t,f)
plot(t,y)
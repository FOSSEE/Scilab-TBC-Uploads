// Solving Using Shooting Method
// u''-(1-x/5)uu'=x,  u(1)=2, u(3)=-1)
function ydot=f(t, y),
    ydot=[y(2);
          t+y(1)*y(2)*(1-t/5);]
endfunction
y0=[2,-1.5]';t0=1;t=1:0.2:3;
y=ode(['rkf'],y0,t0,t,f)

y1=[2,-3]'
U=ode(['rkf'],y1,t0,t,f)
y2=[2,-2.2137]'
V=ode(['rkf'],y2,t0,t,f)
y11=[2,-1.9460]'
U1=ode(['rkf'],y11,t0,t,f)
y21=[2,-2.0215]'
V1=ode(['rkf'],y21,t0,t,f)
y111=[2,-2.0162]'
U11=ode(['rkf'],y111,t0,t,f)
y211=[2,-2.0161]'
V11=ode(['rkf'],y211,t0,t,f)
printf('Table  6.16')
printf('\n  Assume values for du/dx(1)       Calculated Values of u(3)')
T=[y0(2,1)                            y(1,11);
   y1(2,1)                            U(1,11);
   y2(2,1)                            V(1,11);
   y11(2,1)                           U1(1,11);
   y21(2,1)                           V1(1,11);
   y111(2,1)                          U11(1,11);
   y211(2,1)                          V11(1,11);]
disp(T)

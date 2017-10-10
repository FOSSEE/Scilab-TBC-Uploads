// Solving Using Shooting Method
// u''-(1-x/5)u=x,  u(1)=2, u(3)=-1)
function ydot=f(t, y),
    ydot=[y(2);
          t+y(1)*(1-t/5);]
endfunction
y0=[2,-1.5]';t0=1;t=1:0.2:3;
y=ode(y0,t0,t,f)

y1=[2,-3]'
U=ode(y1,t0,t,f)
y2=[2,-3.495]'
V=ode(y2,t0,t,f)
printf('Table  6.15')
printf('\n  Assume du/dx(1)=-1.5       Assume du/dx(1)=-3        Assume du/dx(1)=-3.495')
printf('\n         x    u     du/dx    x    u     du/dx    x    u     du/dx ')
for i=1:11
    D=[t(1,i), y(1,i),y(2,i),U(1,i),U(2,i),V(1,i),V(2,i)]
    disp(D)
end
// example no. 6.20,
// caption: solve the system of equations

//1) eulercauchy  method solving simultanious ODE

deff('[z]=f1(t,u,v)','z=-3*u+2*v');
deff('[w]=f2(t,u,v)','w=3*u-4*v');


[u,v,t] = simeulercauchy(0,.5,0,.4,.2,f1,f2)

// 2)  RK4 method solving simultanious ODE



[u,v,t]=simRK4(0,.5,0,.4,.2,f1,f2)



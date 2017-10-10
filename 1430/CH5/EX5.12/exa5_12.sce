// Example 5.12
// Complete response calculations
// From figure 5.21(b)
R=4;
L=0.1;
function i_dot= fun(t,i)
    i_dot= 4000*sin(280*t)-40*i;
endfunction
i_0=0;
t_0=0;
t=0:0.001:0.225;
i=ode(i_0,t_0,t,fun);
plot(t,i);
xlabel('t');
ylabel('i(t)')
title("Complete response i(t)")

// Example 5.9
// Capacitor discharge
// From Figure 5.25
R=2*10^6;
C=300*10^-6;
v_0=1000; // Initial condition
i_0=0; // Initial condition
function v_n_dot=f(t,v_n)
    v_n_dot= -v_n/(C*R);
endfunction
t=0:5000;
v_n=ode(v_0,i_0,t,f);
plot(t,v_n);
xlabel('t');
ylabel('v_n(t)')
title('Decaying Exponential waveform v_n(t)=1000*exp(-t/600)');

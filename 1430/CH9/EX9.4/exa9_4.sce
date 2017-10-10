//Example 9.4
// Sequential switched transients
// form figure 9.14(a)
// using symbols y(0^-)=y_bef and y(0^+)=y_aft
v_bef=0;
i_bef=0;
C=100*10^-6; // Farad 
V_0=0; // voltage continuity of capacitor
I_0= (-16-V_0)/(8000); // using KVL in figure 9.14(b)
// By DC steady-state analysis,v(t) and i(t) head for the values,
V_ss=(24*(-16))/(8+24);
I_ss=-(16*10^-3)/(8+24);
// supressing the 16V source 
R_eq=(8000*24000)/(8000+24000);
tau=R_eq*C // Time constant
t=0:0.0001:1
v=V_ss+(V_0-V_ss)*exp(-t/tau);      // 0<t<=1s
i=I_ss+(I_0-I_ss)*exp(-t/tau);      // 0<t<=1s
t1=1; // for t= 1 
v_1=V_ss+(V_0-V_ss)*exp(-t1/tau);  
i_1=I_ss+(I_0-I_ss)*exp(-t1/tau); 
// Now the circuit is driven by two dc sources
// Equivalent circuit is shown in figure 9.14(c)
V_0_n=v_1; // Voltage continuity of capacitor
I_0_n=(14.4 -V_0_n)/(4.8*10^3);
V_ss_n=(24*14.4)/(4.8+24);
I_ss_n=14.4/((4.8+24)*10^3);
R_eq_n=((4.8*24)*10^3)/(4.8+24);
tau_n=R_eq_n*C; // New time constant
t2=1:0.0001:3
v_n=V_ss_n+(V_0_n-V_ss_n)*exp(-(t2-1)/0.4);
i_n=I_ss_n+(I_0_n-I_ss_n)*exp(-(t2-1)/0.4);
subplot(2,1,1)
plot(t,v,'-g',t2,v_n,'-g')
xlabel('t')
ylabel('v(t)')
title('Voltage Waveform')
subplot(2,1,2)
plot(t,i,'-r',t2,i_n,'-r')
xlabel('t')
ylabel('i(t)')
title('Current Waveform')


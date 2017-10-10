// Example 5.2 
// Waveform Generation in a Hazard Blinker
// From figure 5.7(a) and(b)
// Lamp will remain OFF initially and draws no current as long as v < 80V
t_1=poly(0,'t_1');
v_1=(1*10^-3)/(50*10^-6)*(t_1);// Using Current-Voltage relation
// When v_1 becomes 80 V The lamp then goes ON.
p_1=-80+v_1;
t_1=roots(p_1);
t_2=poly(0,'t_2');
// This dischrge continues till v_2=40
v_2=80-80*(t_2-t_1);
p_2=-40+80-80*(t_2-t_1);
t_2=roots(p_2);
//With the lamp OFF,the capacitor is again charged by current source but starting form 40V
t_3=poly(0,'t_3');
v_3=40+((1*10^-3)/(50*10^-6))*(t_3-t_2);
p_3=-80+v_3;
t_3=roots(p_3);
t_11=0:0.10:t_1;
v_11=horner(v_1,t_11);
t_22=t_1:0.10:t_2;
v_22=horner(v_2,t_22);
t_33=t_2:0.10:t_3;
v_33=horner(v_3,t_33);
plot(t_11,v_11,'-g',t_22,v_22,'-g',t_33,v_33,'-g')
xlabel('t');
ylabel('v(t)')
title('Waveform of Hazard blinker')
disp("This Waveform will continues periodically thereafter")

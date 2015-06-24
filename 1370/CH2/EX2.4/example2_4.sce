//example2.4
clc
disp("Consider separately excited generator as shown in the fig 2.30")
disp("Note that 250V, 10kW generator means the full load capacity of generator is to supply 10kW load at a terminal voltage V_t=250 V")
disp("Therefore,    V_t=250V    and    P=10kW")
disp("and,  P=(V_t)*(I_L)")
i=(10^4)/250
disp(i,"Therefore,    I_L(in A)=")
disp("Therefore,    I_a=I_L= 40 A   ...As separately excited")
disp("Now,  E=(V_t)+[(I_a)*(R_a)]+(V_brush)")
disp("Now there are two brushes and brush drop is 2V/brush")
v=2*2
disp(v,"Therefore,    V_brush(in V)=")
disp("Therefore,    E=250+40(R_a)+4")
disp("But,  E=255 V on full load")
disp("255 = 250 + 40(R_a) + 4")
r=1/40
disp(r,"Therefore,    R_a(in ohm)=")

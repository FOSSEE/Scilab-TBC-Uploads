//example1.1
clc
disp("From the give waveform,")
s=100/2
disp(s,"For 0<t<2, i(t) is a straight line slope=")
disp("Therefore   i(t)=50t and di(t)/dt=50  .. 0<t<2")
disp("For 2<t<4,   i(t)=100 and di(t)/dt=0")
s=(-100)/2
disp(s,"For 4<t<6, i(t) is a straight line slope = ")
disp("Therefore,   i(t)= -50t and di(t)/dt= -50  ..4<t<6")
disp("Now   v_l(t)=L*di(t)/dt")
v=(50)*10^-3
format(5)
disp(v,"V_l(t)[in volts   from 0<t<2]=")
v=0*10^-3
disp(v,"V_l(t)[in volts   from 2<t<4]=")
v=(-50)*10^-3
disp(v,"V_l(t)[in volts   from 4<t<6]=")
disp("The waveform is shown in the fig. 1.12(a)")

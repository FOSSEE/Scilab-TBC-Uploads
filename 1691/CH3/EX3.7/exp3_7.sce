//Example 3.7
clc
disp("(a)  T = t_p + t_f + t_a")
tp=(5/470)*10^3
format(8)
disp(tp,"Now  t_p(in usec) = nL/R =")
tf=(50/(470*6*2))*10^3
format(6)
disp(tf,"t_f(in usec) = (n/n+1)*L/R*V_CC/V_Y =")
ta=(1.57*sqrt(5*90*10^-15))*10^6
disp(ta,"t_a(in usec) = 1.57*sqrt(LC) =")
t=10.6383+8.865+1.053
format(8)
disp(t,"T(in usec) =")
f=(1/20.5564)*10^3
disp(f,"Therefore,  f(in kHz) = 1/T =")
dc=10.6383/20.5564
format(7)
disp(dc,"Duty cycle = t_p/T =")
disp("So duty cycle is 51.75% which is very close to 50% giving an indication that Q ON and OFF times are equal and the output is almost symmetrical square wave.")
disp("(b)  The collector voltage varies from V_CC-V to V_CC+V_Y")
v=10/2
disp(v,"Now  V(in V) = V_CC / n+1 =")
disp("Therefore,  V_C varies from 10-5 i.e. +5 V to 10+6 = 16 V")
disp("The base voltage varies from nV to -nV_Y i.e. +5 V to -6 V")
disp("The emitter current is constant given by,")
ie=(5/470)*10^3
format(7)
disp(ie,"I_E(in mA) = nV/R =")
ib=(10/(4*470))*10^3
disp("i_B = V_CC/(n+1)^2 * [n/R - t/L]")
format(5)
disp(ib,"So  i_B(max)(in mA) = i_B|t=0 =")
ib=((10/4)*((1/470)-((10.63*10^-3)/5)))*10^6
format(6)
disp(ib,"i_B(t=t_p)(in uA) =")
disp("i_C = V_CC/(n+1)^2 * [n^2/R + t/L]")
ic=((10/4)*((1/470)+((10.63*10^-3)/5)))*10^3
format(7)
disp(ic,"i_C(t=t_p)(in mA) =")
i0=(10/940)*10^3
disp(i0,"I_0 = Peak magnetizing current = n*V_CC / (n+1)*R =")
disp("(c)  I''_m which is the magnetizing current at the end of one cycle is given by")
im=(6*sqrt(90/5))
disp(im,"I''_m(in mA) = V_Y*sqrt(C/L) =")  //answer in textbook is wrong

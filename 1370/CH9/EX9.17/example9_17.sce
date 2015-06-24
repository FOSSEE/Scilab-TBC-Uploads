//example9.17
clc
disp("D=5 mm, V=250V, v_ox=1*10^6 m/s")
e=250/(5*10^-3)
disp(e,"E(in V/m)=V/d=")//answer in text book is wrong
a=((1.6*10^-19)*(50*10^3))/(9.107*10^-31)
disp(a,"a_x(in m/s^2)=(q*E)/m= ")
disp("Now, x= (1/2)*(a_x)*(t^2)+(V_ox)*t+(x_o)  but (x_o)=0 initially")
disp("Therefore, x= (1/2)*(a_x)*(t^2)+(V_ox)*t")
disp("When electron reaches to anode, x=5 mm.")
disp("Therefore, (5*10^-3)=(1/2)*(8.7844*10^15)*(t^2)+(1*10^6)*t")
disp("Therefore, t(in sec)=9.5916D-10       ...neglecting negative value")
disp("Thus time taken by electron to reach anode from cathode is 0.95916 ns.")

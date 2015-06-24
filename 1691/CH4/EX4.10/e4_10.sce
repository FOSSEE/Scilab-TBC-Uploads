//example4.10
clc
disp("a) The 3dB frequency for circuit gain and voltage gain is given as,")
disp("(f_H)=1/(2*pi*R_eq*C_eq)")
r=(200*1000)/(200+1000)
disp(r,"where R_eq(in ohm)=(R_s+r_bb'')parallel to r+b''e =")
c=(100*10^-12)+((1+50)*3*10^-12)
format(10)
disp(c,"and  C_eq(in F)=(C_b''e)+(1+(g_m*R_L)*C_b''c)= ")
f=1/((2*%pi*166.67*253*10^-12))
disp(f,"f_H(in Hz)= ")
disp("b)Voltage gain is given as,")
a=(-50*1)
disp(a,"A=(-g_m*R_L)=")

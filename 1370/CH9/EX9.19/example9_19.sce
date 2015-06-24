//example9.19
clc
disp("l=1.5 cm, d=5 mm, L=50 cm, V_a=2000 V")
v=sqrt((2*2000*1.6*10^-19)/(9.107*10^-31))
disp(v,"1.  v_ox(in m/s)=Beam velocity=sqrt((2*q*V_a)/m)=")
s=((1.5*10^-2)*(50*10^-2))/((2*5*10^-3)*2000)
disp(s,"S(in m/V)=D/(V_d)=(l*L)/(2*d*V_a)=")
g=1/(3.75*10^-4)
disp(g,"G(in V/m)=1/S=")

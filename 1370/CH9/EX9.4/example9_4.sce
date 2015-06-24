//example9.4
clc
disp("d=1 cm, L=33 cm, l=4.5 cm, (V_a)=300 V, (V_d)=50 V")
v=sqrt((2*1.6*300*10^-19)/(9.107*10^-31))
format(9)
disp(v,"i) (v_ox[in m/s])=sqrt(2*q*(V_a)/m)=sqrt((2*1.6*300*10^-19)/(9.107*10^-13))=")
d=((4.5*10^-2)*(33*10^-2)*50)/(2*300*10^-2)
format(7)
disp(d,"ii) D(in m)=(l*L*(V_d))/(2*d*V_a)= ")
s=0.1237/50
format(9)
disp(s,"iii) S(in m/V)=D/(V_d)= ")

//exmaple2.28
clc
disp("P=6, A=2 as wave, Z=492, psi=30 mWb, I_a=40 A")
disp("T=(psi*P*Z*I_a)/(2*pi*A)  Nm")
t=(40*6*492*30*10^-3)/(2*%pi*2)
format(9)
disp(t,"Therefore, T(in Nm)=")
disp("as 1N=(1/9.81)kg")
t=281.8952/9.81
format(8)
disp(t,"Therefore, T(in kgm)=")

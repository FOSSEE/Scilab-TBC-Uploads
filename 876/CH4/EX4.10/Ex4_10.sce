//caption:find value of arm CD
//Ex4.10
clc
clear
close
R1=2000//resistance of arm AB(in ohm)
C1=0.047*10^-6//capacitance of arm AB(in F)
R2=1000//resistance of arm BC(in ohm)
C2=0.47*10^-6//capacitance of arm BC(in F)
C3=0.5*10^-6//capacitance of arm AD(in F)
f=1000//frequency of bridge(in Hz)
w=2*%pi*f
Y1=(1/R1)+(%i*w*C1)
Z2=R2-(%i/(w*C2))
Z3=-%i/(w*C3)
Z4=Y1*Z2*Z3
disp(Z4,'value of arm CD=')
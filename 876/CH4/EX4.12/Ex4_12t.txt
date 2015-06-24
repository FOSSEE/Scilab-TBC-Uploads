//caption:find value of arm AD
//Ex4.12
clc
clear
close
R1=1000//resistance of arm AB(in ohm)
C1=0.5*10^-6//capacitance of arm AB(in F)
R3=1000//resistance of arm BC(in ohm)
C3=0.5*10^-6//capacitance of arm BC(in F)
R4=200//resistance of arm BC(in ohm)
L4=30*10^-3//inductance of arm(in henery)
f=1000//frequency of bridge(in Hz)
w=2*%pi*f
Z1=1/((1/R1)+(%i*w*C1))
Z3=R3+(1/(%i*w*C3))
Z4=R4+(%i*w*L4)
Z2=(Z1*Z4)/Z3
disp(Z2,'value of arm CD=')
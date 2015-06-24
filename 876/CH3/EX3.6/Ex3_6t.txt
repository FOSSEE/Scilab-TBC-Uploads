//caption:Find (a)Sensitivity of LVDT(b)sensitivity of entire setup(c)resolution of the instrument
//Ex3.6
clc
clear
close
V=5//LVDT connection voltage(in V)
Vo=2//output voltage of LVDT(in mV)
D=0.5//displacement(in mm)
A=250//amplification factor
Do=100//divisions of scale
Ds=0.2//reading capacity of LVDT division
S=Vo/D
disp(S,'(a)sensitivity of LVDT(in mV/mm)=')
So=A*S
disp(So,'(b)sensitivity of entire setup(in mV/mm)=')
C=V/Do
M=Ds*C
R=M/S
disp(R,'(c)resolution of the instrument(in mm)=')
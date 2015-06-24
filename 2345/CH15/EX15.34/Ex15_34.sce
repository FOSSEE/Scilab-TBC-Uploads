//Finding current,voltage and power
//Example 15.34(pg. 414)
clc
clear
v=50*20*2//Volume of board to be heated in cm^3
Mw=0.56//weight of wood in gm/cm^3
m=Mw*v/1000//mass of wood in kgm
S=0.35//specific heat of wood
t=15/60//time in hrs
f=30*(10^6)//frequency in cycles/sec
t2=150,t1=30//temp in degreeC
H=m*S*(t2-t1)//heat required to raise the temp in kcal
Hw=H*1000/860//heat required in kW
P=Hw/t//power required in Watts
e=0.5//efficiency of dielectric heating process
Pi=P/e//power input required in Watts
Ko=8.854*(10^-12)//absolute permittivity
K=5//relative permittivity
A=0.5*0.2//area in m
i=0.02
C=Ko*K*A/i//capacitance of parallel plate capacitor in F
Xc=1/(2*%pi*f*C)//capacitive reactance in ohms
cosx=0.05
tanx=19.97
R=Xc*tanx//resistance
V=sqrt(Pi*R)//voltage in volts
Ic=V/Xc//current through the board in Amps
printf('Thus the power required is %2.1f Watts\n',Pi)
printf('And Voltage across the board is %3.2f volts\n',V)
printf('And the current through the board is %2.3f Amps',Ic)

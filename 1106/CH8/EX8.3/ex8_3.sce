// Example 8.3, Page No-368
clear
clc
VL=5
RL=100
IL=VL/RL
IL1=IL*1000
printf('Part A')
printf('\nLoad Current IL= %d mA', IL1)
R1=7
VR1=IL*R1
VR1x=VR1*1000
printf('\nVoltage accross R1= %d mV', VR1x)
printf('\nAs voltage < 0.7V, Q1 is OFF')
printf('\nHence IL=Io=Ii=50 mA')

printf('\n\nPart B')
VLb=5
RLb=2
ILb=VLb/RLb
printf('\nLoad Current IL= %.1f A', ILb)
R1=7
VR1=ILb*R1
printf('\nVoltage accross R1= %.1f mV', VR1)
printf('\nAs voltage > 0.7V, Q1 is ON')
Io=0.147
Ic=ILb-Io
printf('\nHence Ic= %.3f A', Ic)



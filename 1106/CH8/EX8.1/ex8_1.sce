// Example 8.1, Page No-362
clear
clc

Vo=15
Vimin=Vo+3

Vr=2
Vi=Vimin + Vr/2

Vz=Vi/2
printf('As Vz=%.1f, use Zener diode 1N758 for 10V', Vz)

Vz=10
Iz=20*10^-3

R1=(Vi-Vz)/Iz
printf('\nR1= %d ohm', R1)
I2=50*10^-6
R2=(Vo-Vz)/I2
R2=R2/1000
printf('\nR2= %.1f kohm', R2)

R3=Vz/I2
R3=R3/1000
printf('\nR3= %d kohm', R3)
printf('\nSelect C1= 50uF')
Vcemax=Vi+Vr/2
IE=50*10^-6
IL=50*10^-6
P=(Vi-Vo)*IL
P1=P*1000000
printf('\nP= %.1f mW', P1)
printf('\nUse the transstor 2N718 for Q1')



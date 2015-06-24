//caption:Find equivalent parallel resistance and capacitance.
//Ex4.9
clc
clear
close
R1=3.1//resistance(in kilo ohm)
R2=25//resistance(in kilo ohm)
C1=5.2*10^-6//capacitance(in F)
R4=100//resistance(in kilo ohm)
f=2500//frequency (in Hz)
w=2*%pi*f
R3=(R4/R2)*((R1)+1/(w^2)*R1*(C1^2))
disp(R3,'equivalent parallel resistance(in kilo ohm)=')
C3=1/((w^2)*C1*R1*R3)
disp(C3,'equivalent parallel capacitance(in F)=')
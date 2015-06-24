clc
// initialization of variables
clear
hp=300 //h.p.
N1=30 //rpm
N2=30000 //rpm
fs=600 //kg/cm^2
// calculations
T1=4500*hp*100/(2*%pi*N1)
T2=T1/1000
D1=16*T1/(%pi*fs)
D1=D1^(1/3)
D2=16*T2/(%pi*fs)
D2=D2^(1/3)
// results
printf('Diameters required are %.1f, %.1f cm',D1,D2)

// wrong calculations in the text

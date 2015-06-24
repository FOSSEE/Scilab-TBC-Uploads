//find the phase shift of the wave
//given
f=1d+9//Hz
v0=3d+8//m/s
lem=v0/f//calculating wavelength
b=2*%pi/lem//calculating phase shift
b=round(b*100)/100///rounding off decimals
disp(b,lem,'the wavelength and phase shift respectively')//in rad/m and m

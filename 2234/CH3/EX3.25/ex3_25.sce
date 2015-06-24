clc;
f=300;  //frequency in Hz
r=1;  //distance in metre
i=2;  //current in Ampere
area=0.1;  //area in metre square
mo=4*(%pi)*10^-7;  //constant
H=i/(2*(%pi)*r);  //calcualting H field rms
disp(H,"H field intensity (rms) in A/m = ");  //displaying H field
Hp=H*sqrt(2);  //peak H
disp(Hp,"H field intensity (peak) in A/m = ");  //displaying result
Bp=(Hp*mo);  //calculating B peak in Tesla
disp(Bp,"Flux peak in Tesla = ");  //displaying B
vp=2*(%pi)*f*Bp;  //calculating v peak
disp(vp,"Peak voltage in volt = ");  //displaying result
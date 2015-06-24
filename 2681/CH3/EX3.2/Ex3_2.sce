//frequency of IMPATT diode
//given
clc
Vd=3d+5//m/s
l=7d-6//meter
f=Vd/(2*l)//hertz
f=round(f*1d-8)/1d-8///rounding off decimals
disp(f*1d-9,'the required frequency of IMPATT diode in GHz')//GHz

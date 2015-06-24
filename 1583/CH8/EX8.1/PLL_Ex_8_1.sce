clc
//Chapter 8:Linear model of phase locked loop
//example 8.1 page no 314
//given
fo=1*10^6//output frequency
fr=25*10^3//reference frequency
N=fo/fr
Kd=2//phase detector gain factor
Ko=100//VCO gain factor
thetao=(2*100*2*%pi)//output phase
s=poly(0,"s")
thetar=s+(2*100*2*%pi)/N//input phase
Tf=thetao/thetar
disp(Tf,'the closed loop transfer function is ')
Kv=Kd*Ko/N//bandwidth
mprintf('the synthesizer bandwidth will be %d Hz',Kv)

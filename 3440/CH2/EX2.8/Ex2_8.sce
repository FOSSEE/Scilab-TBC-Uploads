clc

t1=100*10^-6//sec
t2=200*10^-6//sec
N=5
//deltap=(N/sqrt(4*%pi*Dp*t))*exp(t/taup)
taup=(t2-t1)/log(N/sqrt(2))
disp(taup,"minority carrier lifetime taup in sec is=")

clc
clear
disp('example 12 6')
po=2*10^6;p=8;n=750;v=6000;x=6*%i;pf=0.8;//given 
i=po/(v*sqrt(3))
e=(v/sqrt(3))+i*x*(pf-sind(acosd(pf))*%i)
mt=p*%pi/(2*180)
cs=cosd(atand(imag(e)/real(e)))
ps=abs(e)*v*sqrt(3)*cs*mt/(1000*abs(x))
ns=n/60
ts=ps*1000/(2*%pi*ns)
printf(" synchronous power %.1fkW per mech.degree \n synchrounous torque %dN-m",ps,ts)
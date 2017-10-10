// select pump deliver 1890 l/min 
clc
Q=(1890e-3/60)
disp(Q)
p=448e3
N=3600 //rev/min
w=(2*N*%pi)/60
g=9.8
gammma=9800
mprintf('\n speed in rad/s = w= %f rad/s',w)
H=p/gammma
mprintf('\n head in meters H = %f m',H)
wp=((w*(sqrt(Q)))/((g*H)^(3/4)))
mprintf('\n specific speed of the pump giveb by Wp=%f',wp)
mprintf('Wp<1 therefore radial pump selected')

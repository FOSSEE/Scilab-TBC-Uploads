Vp=120;Angle=60;

t0=%pi/2

t1=t0:0.01:(210/360*2*%pi);

integrate('2^.5*120*sin(t)','t',t0,t1)

Vo=((3*sqrt(6))/(2*%pi))*120*cos(%pi*Angle/180)
L=25E-3

T=5/1000
I=1/L*integrate('25*cos(500*t)','t',0,T)
P=25*cos(500*T)*I

t1=%pi/2/500       /////power absorbed zero
t2=%pi/500         /////energy stored zero

disp(I,P,t1,t2)
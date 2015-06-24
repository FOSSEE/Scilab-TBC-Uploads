f=50
w=2*%pi*f
T=1/f

Iav=1/(T/2)*integrate('sin(w*t)','t',0,T/2)
disp(Iav)

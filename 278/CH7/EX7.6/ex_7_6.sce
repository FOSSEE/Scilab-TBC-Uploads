d=900//mm
t=10//mm
deltav=150*10^3//mm^3
E=200*10^3//N/mm^2
mu=0.3
p=(deltav*8*t*E)/(%pi*d^4*(1-mu))
disp(p,"Pressure exerted by the fluid on the shell in N/mm^2")
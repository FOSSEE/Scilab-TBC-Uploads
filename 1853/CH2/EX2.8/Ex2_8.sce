
//find the number of amprs turns required
A=25e-4
F=1.2e-3
u=1  //air path
l=0.25e-2
N=(F*l/(4*%pi*10^-7*A*u))*2  // for two air gaps
v=2000  // iron path
L=50e-2
N1=(F*L)/(v*A*4*%pi*10^-7)
N2=N+N1
disp( 'total amps turns  =    '+string(N2)+'    AT'  ,  'amps turn for air=    '+string(N1)+'    AT'  , 'amps turn for air=   '+string(N)+'   AT'  )

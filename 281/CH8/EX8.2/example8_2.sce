disp('chapter 8 ex8.2')
disp('given')
disp('Determine required minimum slew rate for circuit designed in example 8.1')
disp('output voltage Vo=5volt')
Vo=5
disp('input rise time tri=100*10^(-6)')
tri=100*10^(-6)
disp('C1=.05*10^(-6)F and R2=10kohm')
C1=.05*10^(-6)
R2=10000
disp('output rise time tro=30%of input rise time')
tro=.30*tri
disp('seconds',tro)
disp('Smin=Vo/tro')
Smin=Vo/tro
disp('V/us',Smin)
disp('fc=1/(2*%pi*R2*C1)')
fc=1/(2*%pi*R2*C1)
disp('Hz',fc)
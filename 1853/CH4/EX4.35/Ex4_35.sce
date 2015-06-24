
//determine the value of max. current
C=30e-6;//farad
R=12;//ohms
L=0.2;//henry
V=200;//volt
I=V/R
f=1/(2*%pi*sqrt (L*C))
disp('frequency='+string(f)+'hertz','maximum crnt='+string(I)+'amp')

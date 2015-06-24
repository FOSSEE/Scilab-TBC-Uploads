
//resistance at 40 degree
a0=0.0043
t1=27
t2=40
R1=1.5
R2=R1*(1+a0*t2)/(1+a0*t1)
disp('value of resistance='+string(R2)+ '   ohm')

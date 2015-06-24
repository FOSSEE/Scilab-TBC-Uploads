
//calculate the induced emf in coil
di=5
dt=0.05
L=5.029e-4
di1=400
dt1=1
e=L*di/dt
e1=L*di1/dt1
disp('Induced emf=   '  +string(e1)+'   volts'  ,  'Induced emf=   '  +string(e)+'   volts')

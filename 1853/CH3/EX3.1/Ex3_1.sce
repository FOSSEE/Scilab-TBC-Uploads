
//calculate the emf induced in the coil
N=200
F1=1e-3
F2=3e-3
F3=F2-F1
t=0.1
e=N*F3/t  //neglecting negative sign
disp('induced emf=   ' +string(e)+'  volts')

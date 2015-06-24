
//calculate the current
C=25e-6;
V=200
f=60  //frequency half
f2=120  //frequency doubled
Xc=1/(2*%pi*f*C)
Xc=1/(2*%pi*f2*C)
I=V/Xc
disp('frequency half='+string(f)+'hz' ,  'frequency douled='+string(f2)+'hz')

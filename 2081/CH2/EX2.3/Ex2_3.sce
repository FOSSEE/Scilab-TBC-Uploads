fc=900*10^6 
c=3*10^8 
yc=c/fc//wavelength of transmission
ddir=1000
dref=1000
Angle=120
Q=120/2
tdir=ddir/c//time taken by direct path
tref=dref/(c*sin(Q*%pi/180))//time taken by reflected path
delay=tref-tdir
disp(delay,'delay in sec')

fc=800*10^6
fd1=10
fd2=50
Vm=80*5/18
c=3*10^8
Yc=c/fc//wavelength of transmission
Q1=acosd(Yc*fd1/Vm)//as cosQ=Yc*fd/Vm
Q2=acosd(Yc*fd2/Vm)
Beamwidth=Q1-Q2
disp(Beamwidth,'Beamwidth in degrees')

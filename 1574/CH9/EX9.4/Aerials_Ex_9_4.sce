clc
//Chapter9
//Example9.4, page no 398
//Given
dl=2// length of wire 
I=6//current in the wire
f=1e6// operating freq
r=30e3//distance at which field is to be calculated
theta=90//right angles to the wire axis
lambda=300// wavelength
w=2*%pi*f//angular freq
c=3e8,t=f^-1
Phi=w*(t-(r/c))//Phase shift
Erad=25.13e-5*cos(Phi)//Radiation electric field intensity
H=Erad/(120*%pi)//Radiation magnetic field intensity
mprintf('electric field intensity is %f mV/m \n magnetic field intensity is %f uA/m',Erad*1e3,H*1e6)

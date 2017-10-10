clc
f=60 //frequency of voltage source in Hz
x=1.9 //Steinmetz coefficient
V=80 //applied sinusoidal voltage in volts
t=100 //no of turns wound on a coil
hc=500 //hysteresis coefficient 
w=2*%pi*f //angular frequency in rads/sec
phimax=(sqrt(2)*V)/(t*w)//maximum value of flux in the core in webers
mprintf("phimax=%fWb\n",phimax)//the answer may vary due to roundoff error
A1=0.0025 //cross-sectional area of core in metre square
Bmax1=phimax/A1 //flux density in core A in tesla
mprintf("Bmax=%fT\n",Bmax1)//the answer may vary due to roundoff error
lfe1=0.5 //mean flux path length of core A in meters
VolA=A1*lfe1 //volume of core A in metre cube
mprintf("VolA=%f metre cube\n",VolA)
//for core A
Ph1=VolA*f*hc*(Bmax1^x) //hysteresis loss in core A in watts
mprintf("Ph=%f W\n",Ph1)//the answer may vary due to roundoff error
//for core B
A2=A1*3 //cross sectional area of core B in metre square
lfe2=0.866 //mean flux path length of core B in metres
Bmax2=phimax/A2 //flux density in core B in tesla
VolB=A2*lfe2 //volume of core B in metre cubes
Ph2=VolB*f*hc*(Bmax2^x) //hysteresis loss of core B in watts
mprintf("Ph=%f W\n",Ph2)//the answer may vary due to roundoff error





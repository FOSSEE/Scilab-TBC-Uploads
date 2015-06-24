
//calculating currents in the main and teaser transformer
P2=600D+3//output
V2=110//applied voltage
pf=.707//lagging power factor
I2=P2/(pf*V2)
I1t=1.15*I2*110/6600
I1m=I2*110/6600
mprintf("Currents in primary winding of main and teaser transformer is %f A and %f A respectively\n", I1m,I1t)
//calculating line currents
Ic=I1t
Ib=sqrt(I1m^2+(I1t/2)^2)
Ia=Ib
mprintf("Line currents are %f A, %f A and %f A", Ia,Ib,Ic)

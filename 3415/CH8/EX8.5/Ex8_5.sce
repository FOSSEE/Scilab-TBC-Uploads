//fiber optic communications by joseph c. palais
//example 8.5
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc
 clear all
NA=0.2//numerical aperture
dia=50*(10^(-6))//core diameter in m
a=dia/2//core radius in m
lateral_loss=0.5//allowable lateral loss in dB
Beam_dai=2//beam daimeter in mm
dby2a=0.09//since loss is 0.5dB d/2a is 0.09 from given figure 8.3
//to find 
r=Beam_dai/2//beam radius in mm
Beam_divergence=asind(NA)//beam diverges in degrees
f=r/tand(Beam_divergence)//focal length in mm
d=dby2a*2*a//allowed offset in m
mprintf("Focal Length=%fmm",f)
mprintf("\nDisplacement=%fum",d*1e6)//multiplication by 1e6 will convert the unit from m to um

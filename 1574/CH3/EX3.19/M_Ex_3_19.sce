clc
//Chapter3: Modulation
//Example3.19, page no 172
//Given
deltaF=75e3// max freq deviation
fm=15e3//modulation freq
mf=(2*deltaF)/fm// freq modulation depth
BW=mf*fm// Bandwidth
mprintf('The approximate bandwidth is: %d kHz',BW/1e3)

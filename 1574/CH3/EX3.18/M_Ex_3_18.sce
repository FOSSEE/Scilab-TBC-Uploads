clc
//Chapter3: Modulation
//Example3.18, page no 172
//Given
deltaF=1e6// max freq deviation
fm=10e3//modulating freq
mf=(2*deltaF)/fm// modulation coefficient
BW=mf*fm// bandwidth
mprintf('The approximate bandwidth is: %d MHz',BW/1e6)

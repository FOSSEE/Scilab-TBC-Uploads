clc
//Chapter8
//Example8.15, page no 230
//Given
//b
fm=1e2//modulation freq
Phimax=10*%pi/180// Max Phase deviation
//i
Freq_dev=Phimax*fm// Freq deviation
//ii
Mul_fact=30e3/Freq_dev// Multification factor
mprintf('Freq deviation is %f Hz\n  Multification factor is %d\n corresponding modified max freq deviation is 30114kHz',Freq_dev,Mul_fact)

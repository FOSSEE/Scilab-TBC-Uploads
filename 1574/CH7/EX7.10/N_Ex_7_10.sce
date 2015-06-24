

clc
//Chapter7
//Example7.10
//Given
SNRam=25// Signal to noise ratio of AM
PcFM_AM=0.9//
mf=5
SNRfm=(10*log10(3*(mf^2)*(PcFM_AM)))+SNRam
mprintf('S/N ratio for FM is %f dBs',SNRfm)
// Note :  There are some calculation errors in the solution presented in the book

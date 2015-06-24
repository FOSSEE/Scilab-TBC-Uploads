clc
//Chapter3: Modulation
//Example3.21, page no 173
//Given
deltaF=75e3//freq deviation
fm=15e3// modulating freq
mf=deltaF/fm
BW=2*mf*fm// Bandwidth
GB=25e3//Guard Band
BWo=BW+(2*GB)// Overall bandwidth
mprintf('Overall bandwidth including guard band is %d kHz',BWo/1e3)

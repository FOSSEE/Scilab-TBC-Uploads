clc
//Chapter3: Modulation
//Example3.14 page no 152
//Given
//Phi=(wc*t+Mf*sin(wmt))....instantaneous phase of FM
fm=5000//modulating freq
deltaf=50e3//freq deviation
deltaPhi1=deltaf/fm// Advance or retard in phase

fm=100//modulating freq in second signal
deltaPhi2=deltaf/fm
mprintf('DeltaPhi1= %d rad\nDeltaPhi2=%d rad\n',deltaPhi1,deltaPhi2)

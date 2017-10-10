clear
//Given
Fc=500                   //KHz
Fs=1                     //KHz

//Calculation
A1=Fc+Fs
A2=Fc-Fs
B=A1-A2

//Result
printf("\n sideband frequancies are %0.3f KHz and %0.3f KHz",A1,A2)
printf("\n bandwidth required is %0.3f  KHz",B)

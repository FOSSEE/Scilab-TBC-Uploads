clear
//Given
e=1.6*10**-19
m=9*10**9
G=6.67*10**-11
me=9.11*10**-31
mp=1.67*10**-27
r=10**-10

//Calculation
F0=(m*e**2)/(G*me*mp)
F1=(m*e**2)/(G*mp*mp)
F2=m*e**2/r**2
A1=F2/me
A2=F2/mp

//Result
printf("\n (a)(i)strength of an electrons and protons %0.1f *10**39 ",F0*10**-39)
printf("\n    (ii)Strength of two protons  %0.1f *10**36 ",F1*10**-36)
printf("\n (b)    Acceleration of electron is  %0.1f *10**22 m/s**2",A1*10**-22)
printf("\n       Acceleration of proton is  %0.1f *10**19 m/s*2",A2*10**-19)

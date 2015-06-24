//Chapter 5, Problem 3
clc
f1=260*10^6                             //frequency in hertz
f2=100*10^6                             //frequency in hertz
A=40                                    //minimum attenuation in dB

//calculation 
fr=f1/f2
n=A/(20*log10(fr))

printf("Number of arms = %f\n i.e 5 arms",n)

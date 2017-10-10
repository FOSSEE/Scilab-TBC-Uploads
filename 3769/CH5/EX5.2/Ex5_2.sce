clear
//given
I=0.5
T=1
e=1.6*10**-19
t=60               //minute

//Calculation
n=I*T/e
q=I*t**2
n1=q/e

//Result
printf("\n (i) The number of electrons passing a cross section of the bulb is  %0.1f *10**18 electrons/S",n*10**-18)
printf("\n (ii) The number of electrons is  %0.1f *10**22 electrons/hour",n1*10**-22)

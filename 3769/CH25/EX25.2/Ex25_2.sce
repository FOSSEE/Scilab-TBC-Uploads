clear
//Given
me=9.1*10**-31
c=3*10**8
e=1.6*10**-19
mp=1.673*10**-27
mn=1.675*10**-27

//Calculation
E=(me*c**2)/e
E1=(mp*c**2)/e
E2=(mn*c**2)/e

//Result
printf("\n (i) Equivalent energy of electron is %0.2f  Mev",E*10**-6)
printf("\n (ii) Equivalent energy of proton is %0.1f  Mev",E1*10**-6)
printf("\n (iii) Equivalent energy of neutron is %0.1f  Mev",E2*10**-6)

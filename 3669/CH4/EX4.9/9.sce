//Variable declaration
me=1.676*10**-27;    //mass(kg)  
mn=9.1*10**-31;    //mass(kg)
h=6.63*10**-34;    //planck's constant

//Calculation
lamda_n=h/sqrt(4*mn*me);      //de broglie wavelength(m)

//Result
printf('de broglie wavelength is %0.3f  nm   \n',int(lamda_n*10**9))
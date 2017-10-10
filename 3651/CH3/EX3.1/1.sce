//Variable declaration
N=6.023*10**26
deltaHv=120
B=1.38*10**-23
k=6.023*10**23

//Calculations
n0=0                                          // 0 in denominator
n300=N*exp(-deltaHv*10**3/(k*B*300))     //The number of vacancies per kilomole of copper
n900=N*exp(-(deltaHv*10**3)/(k*B*900))

//Results
printf('at 0K, The number of vacancies per kilomole of copper is %0.3f' ,n0)
printf('at 300K, The number of vacancies per kilomole of copper is %0.3f *10**5\n',(n300/10**5))
printf('at 900K, The numb ber of vacancies per kilomole of copper is %0.3f *10**19\n',(n900/10**19))
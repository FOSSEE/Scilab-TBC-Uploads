
//Variable declaration
F_500=1*10**-10

T1=500+273
T2=1000+273


//Calculations
lnx=log(F_500)*T1/T2;
x=exp(lnx)

printf('Fraction of vacancies at 1000 degrees C =%0.3f *10**-7\n',(x*10**7))

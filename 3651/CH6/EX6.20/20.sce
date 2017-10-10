
//Variable declaration
lamda_L1=39.6*10**-9
lamda_L2=173*10**-9
T1=7.1
T2=3

//Calculations
x=(lamda_L1/lamda_L2)**2
Tc4=(T1**4)-((T2**4)*x)/(1-x)
Tc=(Tc4)**(1/4)
printf('Tc = %0.3f     K   \n',(Tc))
printf('lamda0= %0.3f    nm    \n',((sqrt(1-(T2/Tc)**4)*lamda_L1)*10**9))
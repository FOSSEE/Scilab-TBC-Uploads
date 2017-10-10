//Variable declaration
T1=500+273;    //temperature(K)
T2=1000+273;   //temperature(K)
f=1*10**-10;   //fraction

//Calculation
x=(T1/T2);
y=(log(f));
w=(x*y);
F=exp(w);    //fraction of vacancy sites

//Result
printf('fraction of vacancy sites is %0.3f  *10**-7   \n',(F*10**7))
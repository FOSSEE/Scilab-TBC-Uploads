clc
//initialisation of variables
hg=2803.4 //kj/kg
c=300 //m/s
sg=6.1253 //kj/kgk
h2=2090.0 //kj/kg
//CALCULATIONS
h0=hg+((c)^2)/2000
c2=44.72*(h0-h2)^0.5
//RESULTS
printf('total enthalpy is %2fkj/kg',h0) //textbook answer is wrong
printf('\nfinal stream is %2fm/s',c2) //textbook answer is wrong

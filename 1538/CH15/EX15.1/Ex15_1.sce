//example-15.1
//page no-461
//given
//reaction comlete in 500 mins at 10 degree celcius and in 1 min at 80 degrees celcius
//so
 t1=1  //min
 t2=500  //min
 T1=273+80  //kelvin
 T2=273+10  //Kelvin
 //gas constant 
 R=8.314
 //as we know that phie=1/t*
 //so
 //log(phie1/phie2)=log(t2/t1)
 //so we get
 //log(t2/t1)=Ea/2.303*(1/T1-1/T2)
 //so Ea is given by
 Ea=2.303*log(t2/t1)*(1/(1/T1-1/T2))*R
 //to find the reaction completion time when temperature is 40 degrees celcius
 //so
 T3=273+40   //Kelvin
 t3=t1*exp(Ea/2.303/R*(1/T1-1/T3))  //min
 printf ("the reaction completion tym at 40 degree celcius is %f min",t3)



//Variable declaration
Vo=0.7                  //contact potential(V)
Vf=0.4                  //forward biasing voltage(V)    

//Calculation
x=exp(-20*(Vo-Vf))/exp(-20*Vo)   //increase in probability of majority carriers

//Result
printf ("increase in probability of majority carriers is %.f times",x)

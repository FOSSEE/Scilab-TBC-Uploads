//example-9.7
//page no-289
//given
//temp 
T=600  //degree C
//tightenening stress
sigmai=750    //kgf/cm^2
//minimum creep rate
vcr=2.8*10^-8  //cm/cm/hour
//stress
sigma=300  //kgf/cm^2
//young's modulus
E=2*10^6   //kgf/cm^2
//constant
n=3
//we knnow that minimum creep rate
//vcr=A*sigma^n
//so
A=vcr/sigma^n
//total time involved in creep of bolt is 1 year
t=365*24  //hours
//the stress relaxation in bolt due to creep is expresed by:-
//1/(sigmaif)^(n-1)=1/(sigmai)^(n-1)+A*E*(n-1)*t
//we have to find sigmaif
//so
sigmaif={(1/(sigmai)^(n-1)+A*E*(n-1)*t)^(1/(n-1))}^-1  
printf ("the stress relaxation in bolt to creep is %f kgf/cm^2",sigmaif)

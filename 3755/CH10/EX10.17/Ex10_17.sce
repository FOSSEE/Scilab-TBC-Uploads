clear
//
//
//

//Variable declaration    
epsilonr=4.94;       //dielectric constant
n2=2.69;

//Calculations
x=(epsilonr-1)/(epsilonr+2);
y=(n2-1)/(n2+2);
alpha=1/((x/y)-1);       //ratio between electronic and ionic polarizability

//Result
printf("\n ratio between electronic and ionic polarizability is %0.3f ",alpha)

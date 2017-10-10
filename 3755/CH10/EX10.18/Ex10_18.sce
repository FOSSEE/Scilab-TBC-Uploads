clear
//
//
//

//Variable declaration    
epsilonr=5.6;       //dielectric constant
n=1.5;

//Calculations
x=(epsilonr+2)/(epsilonr-1);
y=(n^2-1)/(n^2+2);
alpha=(1-(x*y))*100;       //percentage of ionic polarizability

//Result
printf("\n percentage of ionic polarizability is %0.1f percentage",alpha)

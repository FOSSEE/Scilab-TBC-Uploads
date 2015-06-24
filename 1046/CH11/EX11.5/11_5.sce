//Example 11.5
//Page no. 508
//given
//Reynold no (Re),friction factor(f),Prandlt no. (P)
Re=7.44*(10^4)
f=0.00485
P=5.12
x=P-1            //assume
//according to Von Karmen analogy
N=((f/2)*Re*P)/(1+(5*sqrt(f/2))*(x+log(1+(5/6)*x)))
printf("Nusslet no is: %f \n",N)
//printf("The prandtl analogy predicts Nu=458.7")

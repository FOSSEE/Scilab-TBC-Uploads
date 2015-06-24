clc
//Initialization of variables
ER=1.23 //V
EL=-0.44 //V
//calculations
E=ER-EL
//results
if(E>0)
    printf("The reaction is favouring products and E is %.2f V",E)
else
    printf("The reaction is not favouring products and E is %.2f V",E)
    

//Variable declaration
A=100.                               //high frquency response        
Af=100                               //gain     
A1=A**2                              //forward gain
A1new=50                             //gain reduces to 50%  

//Calculations
beta=((A1/Af)-1)/A1                  //feedback factor
Afnew=A1new**2/(1+beta*A1new**2)     //new value of A
g=Af-Afnew                           //reduction in overall gain

//Results
printf ("%% change in gain of feedback unit is %.2f ",g)

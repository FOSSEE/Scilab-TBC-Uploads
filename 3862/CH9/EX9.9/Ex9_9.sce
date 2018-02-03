clear
//variable declaration

//summation of all  horizontal forces is zero & vertical forces is zero.
 
//Let the left support C be at a distance x metres from A. 

P1=(30)                        //vertical down load at A,KN
Pu=(6)                         //uniform distributed load over whole span,KN/m,(20m of span)
P2=(50)                        //vertical down load at B, KN

//Rc=Rd(given) reaction at C & D is equal.

Rc=(P1+P2+Pu*20)/2
Rd=Rc

//taking moment at A 
x=(((Pu*20*10+P2*20)/100)-12)/2

printf("\n X= %0.2f  m",x)

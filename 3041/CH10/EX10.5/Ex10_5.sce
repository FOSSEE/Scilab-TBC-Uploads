//Variable declaration
Vs=16.              //source voltage(V)

//Calculations
//Part b
I=0                 //current through 10 V
Is=-4*(I-(Vs/32))   //current of current source(A)

//Part c
Is1=16              //current of current source(A)
I=0                 //current through 10 V
Vs1=(I+(Is1/4))*32  //source voltage(V)

//Results
printf ("Is is %.f A",Is)
printf ("Vs1 is %.f V",Vs1)

//Variable declaration
A=1500                         //voltage gain
beta=1/25.                     //current gain 

//Calculations
//Part a
Af=A/(1+A*beta)                 //voltage gain with feedback

//Part b
g=0.1                        //amplifier gain changes by 10%=0.1
gf=g/(1+A*beta)              //% by which its gain in feedback mode changes dAf/Af

//Results
printf ("Amplifier gain with feedback is %.1f ",Af)
printf ("%% by which gain in feedback changes is %.3f %%",gf/1E-2)

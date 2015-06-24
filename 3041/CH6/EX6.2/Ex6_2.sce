//Variable declaration
w2=10**4.             //corner frequency(rad/s)  
w2new=10**5.          //new corner frequency(rad/s)  
Ao=1000.              //high frquency response        

//Calculations
beta=((w2new/w2)-1)/Ao //feedback factor
Anew=Ao/(1+beta*Ao)   //overall gain of amplifier from formula w2new=w2(1+beta*Ao)
p=w2*Ao               //gain bandwidth product without feedback from formula Anew=Ao/1+beta*Ao
pnew=Anew*w2new       //gain bandwidth product with feedback

//Results
printf ("beta is %.3f",beta)
printf ("overall gain is %.1f",Anew)
printf ("gain-bandwidth products with and without feedback are %.1f and %.1f resp.",p,pnew)

clc 
// Given that
n=0.5//exponent that depends on tool and workpiece material
C=400//constant

// Sample Problem on page no. 555

printf("\n # Increasing tool life by Reducing the Cutting Speed # \n")

V1=poly(0,"V1")
r=0.5// it is the ratio of V2/V1 where V1 and V2 are the initial and final cutting speed of the tool
//let t=T2/T1 where T1 and T2 are the initial and final tool life
t=1/(r^(1/n))//from the relation V1*(T1^n)=V2*(T2^n)
P=(t-1)*100
printf("\n\n Percent increase in tool life  =%d Percent",P)



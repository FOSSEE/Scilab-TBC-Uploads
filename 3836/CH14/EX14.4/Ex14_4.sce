clear
//
//Initialization
n=400                        //turns
l=200*10**-3                 //circumference
uo=4*%pi*10**-7          //epsilon zero constant
a=30*10**-6                 //area

//Calculation
L=(uo*a*n**2)/l                //Inductance in henry               

//Results
printf("\n Inductance,L = %d uH",L*10**6)


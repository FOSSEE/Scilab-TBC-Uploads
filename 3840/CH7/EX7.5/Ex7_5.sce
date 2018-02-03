clear
//
//
//

//Variable declaration
d=0.1             //diameter(m)
i=0.5             //current(ampere)

//Calculation
r=d/2            //radius of atom(m)
mew=i*%pi*r**2     //magnetic moment(A-m**2)

//Result
printf("\n magnetic moment is %0.2f  *10**-3 A-m**2",mew*10**3)

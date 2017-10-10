clear
//
//Initialization
l1=10                //Inductance in henry       
l2=20                //Inductance in henry       

//Calculation
ls1=l1+l2                //Inductance in henry               
lp=((l1*l2)*(l1+l2)**-1)    //Inductance in henry       
//Results
printf("\n (a) Inductance in series,L = %d uH",ls1)

printf("\n (b) Inductance in parallel,L = %.2f uH",lp)


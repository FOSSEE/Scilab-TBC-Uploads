clear
//

//Given
//Variable declaration
sigma=125*10**6    //Safe stress in N/sq.m
P=2.1*10**6        //Axial load in N
D=0.30             //External diameter in m

//Calculation

d=(sqrt((D**2)-P*4/(%pi*sigma)))*1e2  //internal diameter in cm


//Result
printf("\n internal diameter = %0.3f  cm",d)

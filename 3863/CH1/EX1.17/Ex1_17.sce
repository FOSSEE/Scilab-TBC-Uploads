clear
//

//Given
//Variable declaration
L=2.8*10**3      //Length in mm
t=15             //Thickness in mm
P=40*10**3       //Axial load in N
a=75             //Width at bigger end in mm
b=30             //Width at smaller end in mm
E=2e5            //Youngs Modulus in N/sq.mm

//Calculation
dL=((((P*L)/(E*t*(a-b)))*((log(a)-log(b)))))    //extension of rod in mm


//Result
printf("\n Extension of the rod,dL = %0.3f  mm",dL)

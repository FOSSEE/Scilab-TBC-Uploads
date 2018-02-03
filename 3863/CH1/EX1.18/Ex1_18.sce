clear
//

//Given
//Variable declaration
dL=0.21          //Extension in mm
L=400            //Length in mm
t=10             //Thickness in mm
a=100            //Width at bigger end in mm
b=50             //Width at smaller end in mm
E=2e5            //Youngs Modulus in N/sq.mm

//Calculation
P=int(dL/(((L)/(E*t*(a-b)))*((log(a)-log(b)))))*1e-3    //Axial load in kN


//Result
printf("\n Axial load = %0.3f  kN",P)

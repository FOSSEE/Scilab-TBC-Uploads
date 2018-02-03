clear
//

//Given
//Variable declaration
Di_s=140     //Internal diameter of steel tube in mm
De_s=160     //External diameter of steel tube in mm
Di_b=160     //Internal diameter of brass tube in mm
De_b=180     //External diameter of brass tube in mm
P=900e3      //Axial load in N
L=140        //Length of each tube in mm
Es=2e5       //Youngs modulus for steel in N/sq.mm
Eb=1e5       //Youngs modulus for brass in N/sq.mm

//Calculation
As=(%pi/4*(De_s**2-Di_s**2))     //Area of steel tube in sq.mm

Ab=(%pi/4*(De_b**2-Di_b**2))     //Area of brass tube in sq.mm

sigmab=(P/(2*As+Ab))                 //Stress in steel in N/sq.mm

sigmas=2*sigmab                             //Stress in brass in N/sq.mm
Pb=int(sigmab*Ab)*1e-3                      //Load carried by brass tube in kN
Ps=(P*1e-3)-(Pb)                            //Load carried by steel tube in kN
dL=(sigmab/Eb*(L))                   //Decrease in length in mm


//Result
printf("\n Stress in brass = %0.3f  N/mm^2",sigmab)
printf("\n Stress in steel = %0.3f  N/mm^2",sigmas)
printf("\n Load carried by brass tube = %0.3f  kN",Pb)
printf("\n Load carried by stress tube = %0.3f  kN",Ps)
printf("\n Decrease in the length of the compound tube= %0.3f  mm",dL)

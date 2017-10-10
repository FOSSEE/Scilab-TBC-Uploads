clear
//Given
//
L = 15                                    //ft - The length of the each rod
A = 46.7                                  //in2 - The length of the crossection 
r_min = 4                                 //in - The radius of gyration
stress_yp = 36                            //ksi - the yielding point stress
E = 29*(10**3)                            //ksi - The youngs modulus
C_c = ((2*(%pi**2)*E/stress_yp)**0.5) //Slenderness ratio L/R
C_s = L*12/r_min                          // Slenderness ratio L/R of the present situation 
//According to AISC formulas 
if (C_s <C_c) then
    printf ("a)The following approch is solvable")
else
    print ("The caliculation is not possible")
    end
F_S = 5.0/3 +3*C_s/(8*C_c) -(3*C_s**3)/(8*C_c**3)        //Safety factor 
Stress_all = (1 - (C_s**2)/(2*C_c**2))*stress_yp/F_S    //The allowable strees 
printf("\n a) The allowable stress in this case is %0.2f kips",Stress_all)
//Part - B
//Given
L = 40                                   //ft - The length of the each rod
A = 46.7                                  //in2 - The length of the crossection 
r_min = 4                                 //in - The radius of gyration
stress_yp = 36                            //ksi - the yielding point stress
E = 29*(10**3)                            //ksi - The youngs modulus
C_c = ((2*(%pi**2)*E/stress_yp)**0.5) //Slenderness ratio L/R
C_s = L*12/r_min                          // Slenderness ratio L/R of the present situation 
//According to AISC formulas 
if C_s <C_c then
    printf("b) The following approch is solvable")
else
    printf("The caliculation is not possible")
end
F_S = 5.0/3 +3*C_s/(8*C_c) -(3*C_s**3)/(8*C_c**3)        //Safety factor 
Stress_all = (1 - (C_s**2)/(2*C_c**2))*stress_yp/F_S    //The allowable strees 
printf("\n b) The allowable stress in this case is %0.2f kips",Stress_all)

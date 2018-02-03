clear
//Given
//
L = 15                                    //ft - The length of the each rod
p  = 200                                  //kips The concentric load applied
r_min = 2.10                              //in - The radius of gyration
stress_yp =   50                          //ksi - the yielding point stress
E = 29*(10**3)                            //ksi - The youngs modulus
C_c = ((2*(%pi**2)*E/stress_yp)**0.5) //Slenderness ratio L/R
C_s = L*12/r_min  //Slenderness ratio L/R present situation
printf("\n C_s = %0.2f ",C_s)
printf("\n C_c = %0.2f ",C_c)

if C_s <C_c then
    printf ("\nSince calculated C_s is less than Cc, we can apply the second ASD formula.")
else
    printf("The calculation is not possible")
    end
F_S = 5.0/3 +3*C_s/(8*C_c) -(C_s**3)/(8*C_c**3)        //Safety factor
Stress_all = (1 - (C_s**2)/(2*C_c**2))*stress_yp/F_S    //The allowable stress
a = p/Stress_all //sq.in the allowable area of the beam
printf("\n The allowable stress in this case is %0.0f kips",Stress_all)
printf("\n This stress requires  %0.2f sq.in",a)

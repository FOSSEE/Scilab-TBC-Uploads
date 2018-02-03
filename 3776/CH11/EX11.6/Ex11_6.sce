clear
//Given
//
L = 15                                    //ft - The length of the each rod
A = 46.7                                  //sq.in - The length of the crossection
r_min = 4                                 //in - The radius of gyration
stress_yp = 36                            //ksi - the yielding point stress
E = 29*(10**3)                            //ksi - The youngs modulus
C_c = ((2*(%pi**2)*E/stress_yp)**0.5) //Slenderness ratio L/R
C_s1 = L*12/r_min                          // Slenderness ratio L/R of the present situation
//According to AISC formulas
printf ("a)calculated Le/r ratio is %f",C_s1)
if (C_s1 <C_c) then
    printf ("\n a)Since calculated Le/r ratio is less than Cc(126), we can apply the second ASD formula")
else
    print ("The calculation is not possible")
    end
F_S = 5.0/3 +3*C_s1/(8*C_c) -(C_s1**3)/(8*C_c**3)        //Safety factor
Stress_all = (1 - (C_s1**2)/(2*C_c**2))*stress_yp/F_S    //The allowable stress
printf("\n a) The allowable stress in this case is %0.2f kips",Stress_all)
printf("\n a) The allowable pressure in this case is %0.2f kips",Stress_all*A)

//Part - B
//Given
L = 40                                   //ft - The length of the each rod
A = 46.7                                  //sq.in - The length of the crossection
r_min = 4                                 //in - The radius of gyration
stress_yp = 36                            //ksi - the yielding point stress
E = 29*(10**3)                            //ksi - The youngs modulus
C_c = ((2*(%pi**2)*E/stress_yp)**0.5) //Slenderness ratio L/R
C_s = L*12/r_min                          // Slenderness ratio L/R of the present situation
//According to AISC formulas
printf ("\n b)calculated Le/r ratio is %f",C_s)
if C_s <C_c then
    printf("\n b)Since calculated Le/r ratio is less than Cc,  we can apply the second ASD formula")
else
    printf("The calculation is not possible")
end
F_S = 5.0/3 +3*C_s/(8*C_c) -(C_s**3)/(8*C_c**3)        //Safety factor
Stress_all = (1 - (C_s**2)/(2*C_c**2))*stress_yp/F_S    //The allowable stress
printf("\n b) The allowable stress in this case is %0.2f kips",Stress_all)
printf("\n b) The allowable pressure in this case is %0.2f kips",Stress_all*A)
printf("\n Similarly, for a column fixed at one end")
C_s = L*12/r_min*.8                          // Slenderness ratio L/R of the present situation
//According to AISC formulas
printf ("\n b)calculated Le/r ratio is %f",C_s)
if C_s <C_c then
    printf("\n b)Since calculated Le/r ratio is less than Cc,  we can apply the second ASD formula")
else
    printf("The calculation is not possible")
end
F_S = 5.0/3 +3*C_s/(8*C_c) -(C_s**3)/(8*C_c**3)        //Safety factor
Stress_all = (1 - (C_s**2)/(2*C_c**2))*stress_yp/F_S    //The allowable stress
printf("\n b) The allowable stress in this case is %0.2f kips",Stress_all)
printf("\n b) The allowable pressure in this case is %0.0f kips",Stress_all*A)

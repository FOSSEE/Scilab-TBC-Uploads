clear
//Given
A=5                          //Degree
uv=1.523
ur=1.515
uv1=1.688
ur1=1.650

//Calculation
u=(uv+ur)/2.0
u1=(uv1+ur1)/2.0
A1=-((u-1)*A)/(u1-1)

//Result
printf("\n Angle of flint line is %0.2f  degree",A1)

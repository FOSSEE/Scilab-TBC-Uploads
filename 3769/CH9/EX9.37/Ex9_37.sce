clear
//Given
Rg=60
R1=3.0
rs=0.02

//Calculation
Rt=Rg+R1
I=R1/Rt
Rm=(Rg*rs)/(Rg+rs)
R2=Rm+R1
I1=R1/R2
I2=R1/R1

//Result
printf("\n (i) The value of current is %0.3f  A",I)
printf("\n (ii) The value of current is %0.2f  A",I1)
printf("\n (iii) The value of current is %0.3f  A",I2)

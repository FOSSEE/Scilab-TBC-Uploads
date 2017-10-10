clear
//Given
AB=600              //cm
AC=500.0               //cm
l=40*10**-3           //A
E=2
r=10

//Calculation
R=2*AB/(AC*l)
K=2/AC
AC1=AC-r
pd=K*AC1
Iv=(E-pd)/r
R1=pd/Iv

//Result
printf("\n (i) The resistance of the whole wire is %0.3f  ohm", R)
printf("\n (ii) Reading of voltmeter is %0.3f  V", pd)
printf("\n (iii) Resistance of the voltmeter is %0.3f  ohm",R1)

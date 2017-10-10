clear
//Given
E=240
R=474.0
r=12.5*10**-2
N=500
ur=5000

//Calculation
//
I=E/R
I1=2*%pi*r
H=(N*I)/I1
u=4*%pi*10**-7
B=u*ur*H

//Result
printf("\n (i) The magnetising force is %0.0f  AT/m",H)
printf("\n (ii) The magnetic flux density is %0.2f  Wb/m**2",B)

clear
clc
//Example 14.4 SPEED AND DISCHARGE OF CENTRIFUGAL PUMP
N1=2133.5; //speed[rpm]
H1=90; //[m]
H2=76; //[m]
//(g.H/n.D^2)_N1=(g.H/n.D^2)_N2
N2=N1*(H2/H1)^(1/2) //[rpm]
printf("\nThe speed at which the pump should be operated = %.f rpm.\n",N2)
//(Q/n.D^3)_N1=(Q/n.D^3)_N2
Q1=0.255; //discharge[m^3/s]
Q2=Q1*N2/N1 //[m^3/s]
printf("\nThe discharge for the given conditions = %.3f m^3/s.\n",Q2)
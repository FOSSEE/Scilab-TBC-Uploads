clear
//
//

//Initilization of Variables

P=10*10**3 //N //Load
E=2*10**5 //N/mm**2 //Youngs Modulus
d2=12 //mm //Diameter of bar1
d1=16 //mm //diameter of bar2
L1=200 //mm //Length of bar1
L2=500 //mm //Length of bar2

//Calculations

//Let A1 and A2 be the cross Area of Bar1 & bar2 respectively
A1=%pi*4**-1*d1**2 //mm**2
A2=%pi*4**-1*d2**2 //mm**2

//Let p1 and p2 be the stress in Bar1 nad bar2 respectively
p1=P*A1**-1 //N/mm**2
p2=P*A2**-1 //N/mm**2

//Let V1 nad V2 be the Volume of of Bar1 and Bar2
V1=A1*(L1+L1)
V2=A2*L2

//Let E be the strain Energy stored in the bar
E=p1**2*(2*E)**-1*V1+p2**2*V2*(2*E)**-1

//result
printf("\n The Strain Energy stored in Bar is %0.2f  N-mm",E)

//consider the same wing configuration as that of example 5.1.
L=700; //Lift per unit span
V=50; // velocity of flow in test section(m/s)
D=1.225;//standard sea level density,Kg/m^3
q=D*V^2/2  //dynamic pressure,N/m^2
S=1.3;//wing area,m^2
Cl=L/(q*S) //coefficient of lift
//from the value of Cl and wing configuration we can get angle of attack by using standard table:
a=1 //angle of attack in degree
//To cause zero lift Cl=0,so from standard table of Cl and Lift:
a1=-2.2 //angle of attack in degree
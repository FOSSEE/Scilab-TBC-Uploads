clear
//
//

//Initilization of Variables

T=2*10**6 //N-mm //Torque transmitted
G=80*10**3 //N/mm**2 //Modulus of rigidity
d1=40 //mm 
d2=80 //mm
r1=20 //mm
r2=40 //mm
L=2000 //mm //Length of shaft

//Calculations

//Angle of twist 
theta=2*T*L*(r1**2+r1*r2+r2**2)*(3*%pi*G*r2**3*r1**3)**-1 //radians

//If the shaft is treated as shaft of average Diameter
d_avg=(d1+d2)*2**-1 //mm

theta1=T*L*(G*%pi*32**-1*d_avg**4)**-1 //Radians

//Percentage Error
//Let Percentage Error be E
X=theta-theta1
E=(X*theta**-1)*100 

//Result
printf("Percentage Error is %0.3f",E)

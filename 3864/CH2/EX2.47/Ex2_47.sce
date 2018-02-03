clear
//
//

//Initilization of Variables

d=20 //mm //Diameter of steel bar
L=1000 //mm //Length of bar
E=2*10**5 //N/mm**2 //Youngs Modulus 
p=300 //N/mm**2 //max Permissible stress
h=50 //mm //Height through which weight will fall
w=600 //N //Load

//Calculations

//ARea of steel bar
A=%pi*4**-1*d**2

//Instantaneous extension is
dell_l=p*L*E**-1 //mm 

//Work done by Load 
//W=W1*(h+dell_l)

//Volume of bar
V=(A)*L

//Let E1 be the strain Energy
E1=p**2*(2*E)**-1*V

//Answer in Book for Strain Energy is Incorrect 

//Now Equating Workdone by Load to strain Energy 
W1=E1*51.5**-1

//Now when w=600 N
//Let W2 be the Work done by the Load
//W2=w(h2*dell_l)

h=E1*w**-1-dell_l

//Result
printf("\n The Max Lodad which can Fall from a height of 50 mm on the collar is %0.2f  N",W1)
printf("\n the Max Height from which a 600 N Load can fall on the collar is %0.2f  mm",h)

//Chapter-6, Example 6.2, Page 234
//=============================================================================
//Input parameters
//[s]=[0,(0.3+(%i)*(0.4));(0.3+(%i)*(0.4)),0];//scattering matrix of a two port
//Calculations
//to find l such that S12 and S21 will be real when port1 is shifted lm to the left
//let port 1 be shifted by phi1 degree to the left and port2 position be remained unchanged i.e.,phi2=delta
//Then [phi]=[e^-(j*phi1),0;0,1]
//[S']=[phi]*[s]*[phi]
//for S12 and S21 to be real
phi1=53.13;//in degrees
phi1=phi1*(%pi/180);//phi in radians
b=34.3;//measured in rad/m
l=(phi1)/b;//distance of shift in m
//Output
mprintf("distance that the position of part1 should be shifted to the left so that S21 and S12 will be real numbers is %1.4f m",l)
//=================================END OF PROGRAM==============================

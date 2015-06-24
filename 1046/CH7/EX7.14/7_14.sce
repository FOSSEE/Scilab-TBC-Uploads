//Example 7.14
// a.Calculate i-View factors F12 and //F21,ii-Calculate net rate of radiant energy gain by inner surface.  
//(b) Hence calculate the rate of loss
//of saturated liquid nitrogen at 1 atm pressure 
//stored in a double walled spherical Dewar flask.

//Variable declaration
F12=1                //view factor
r1=0.15              //m inner radius of phere
r2=0.155            //m , outer radius

//Calculation
A1=4*(%pi)*r1^2  //sq m inner area
A2=4*(%pi)*r2^2  //sq m,outer area 
F21=A1/A2
h=200                 //J/g, heat of vaporization of nitrogen
s=5.669*10^-8     // boltzman constant
T2=298               //K, temp. of outer wall
T1=77                //K, Temp. of inner wall
e1=0.06              //emmisivity
e2=0.06              //emmisivity
x=((1-e1)/(e1*A1))+(1/(A1*F12))+((1-e2)/(e2*A2))
Q1net=(s*(T2^4-T1^4))/(x)

//Result-a-i
printf("a-i) View factor F12 = %f",F12)
printf("view factor F21 = %f",F21)
//Result- b
printf("(ii) The net rate of heat gain Q1net =%f J/s",Q1net)
nl=Q1net/h
nl=nl*3600        //g/h
printf("(b) Rate of nitrogen loss = %f g/h",nl)

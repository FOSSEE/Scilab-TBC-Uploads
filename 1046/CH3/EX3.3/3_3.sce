//Example 3.3
//(a)calculate the heat transfer coefficient
//(b)what can be said about the same at the other surface of wall.
//(c)what is average volumetric rate of heat generation
//given
t=0.2           //m, thickness of wall
x=poly(0,'x')   //position in the wall
T=250-2750*x^2  //C, steady state temp. distribution
k=1.163         //W/m C, thermal conductivity of material
Ta=30           //C, ambient temp

//calculation
//(a) at x=0.2   let T=T1 at x=x1
x1=0.2
T1=250-2750*x1^2
//let     D=dT/dx
D=derivat(T)
D=-5500*0.2     //C/m, at x=0.2
h=-k*D/(T1-Ta)
printf(" the heat transfer coefficient is %f W/m^2 C, \n",h)

//(b)at other surface of wall, x=0=x2 (say)
x2=0
a=-5500*0
printf("So there is no heat flow at other surface of the wall \n")

//(c)
A=1            //m^2, area
Vw=A*x1        //m^3, volume of wall
HL=h*(T1-Ta)   //W, heat loss from unit area
Vav=HL/x1
printf("average volumetric rate of heat generation is %f W/m^3",Vav)

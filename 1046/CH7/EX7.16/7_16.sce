//Example 7.16
//Part-a-If the side walls are perfectly insulated 
//and the surfaces are diffuse gray
//with an emissivity 0.7 
//,Calculate the required net rate of heat supplied to base.
//b- If the skin temp. of the outside of the top wall is 60 degree celcius
//and heat loss frim this surface occurs 
//to a big factory shade at 30 degree celcius 
//calculate the convective heat transfer coefficient 

//Variable declaration
l=3           //m, length of wall
w=2           //m,  width of, wall
d=3           //m
R1=l/d
A1=l*w        //sq m,area  1: front part
A2=A1         //sq m ,  area, 2"back part
e1=0.7        //emmisivity
e2=0.7        //emmisivity
T1=673        //k
T2=523        //k
s=5.669*10^-8  //stephen boltzman constant
//Calculation
F12= 0.148  //view factor ,from fig. 7.12
x=(A1+A2-2*A1*F12)/(A2-(A1*(F12^2)))+((1/e1)-1)+(A1/A2)*((1/e2)-1)

//Results
Q1net=-1*A1*(s*(T2^4-T1^4))/(x)
printf("the net rate of radiant heat loss =%f kW \n",Q1net/1000)
// (b)
F24=1        //from fig 7.12
T20=333      //K, outer surface temp. of surface 2
T4=303       //K, ambient temp
Q2rad=A2*e2*F24*s*(T20^4-T4^4)
q=Q1net-Q2rad
q1=q/1000     // Kw
h=q/(A2*(T20-T4))
printf("convective heat transfer coeff. =%f W/sq m C",h)

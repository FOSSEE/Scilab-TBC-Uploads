//Example 7.15
//Calculate the net rate of radiant heat transfer to the wall.

//Given
x=0.15             //m, length of opening on a furnace
y=0.12             //m, width of opening on a furnace
x1=6               //m, width of wall
y1=5               //m, height of wall
e2=0.8             //emissivity of wall
T1=1400            //C, furnace temp.
T2=35              //C, wall temp.
T3=273             //C, standard temp.
s=5.669*10^-8     //stephen boltzman's constant
//in fig. 7.29
l1=2               //m, l1=AF
l2=1.5             //m, l2=AH
h=3                //m, E=dA1
//for the dA1-A2 pair the equation is 
F1=(1/(2*%pi))*((l2/(sqrt(l2^2+h^2)))*tanh(l1/(sqrt(l2^2+h^2)))+(l1/(sqrt(l1^2+h^2)))*tanh(l2/(sqrt(l1^2+h^2))))
//Similarly
//for the dA1-A3 pair the equation is
F2=0.1175
//for the dA1-A4 pair the equation is
F3=0.1641
//for the dA1-A5 pair the equation is
F4=0.0992
//view factor b/w the opening (dA1)and the wall (W) is 
F5=F1+F2+F3+F4
//Calculation of radient heat exchange
dA1=x*y
Aw=x1*y1
Eb1=s*(T1+T3)^4
Ebw=s*(T2+T3)^4
F6=dA1*F5/Aw
Q=dA1*F5*e2*(Eb1*(1-(1-e2)*F6)-Ebw)
printf("the net rate of radiant heat transfer to the wall is %f W",Q)


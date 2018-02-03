clear
//Given
//Variable declaration
L=4000        //Length of the bar in mm
b=30          //Breadth of the bar in mm
t=20          //Thickness of the bar in mm
mu=0.3        //Poisson's ratio
delL=1.0      //delL from problem 2.1

//Calculation
ev=(delL/L)*(1-2*mu)         //Volumetric strain
V=L*b*t                      //Original volume in mm^3
delV=ev*V                    //Change in volume in mm^3
F=int(V+delV)                //Final volume in mm^3

//Result
printf("\n Final volume = %0.3f  mm^3",F)

clear
//

//Given
//Variable declaration
P=600e3         //Axial load in N
L=20e3          //Length in mm
w=0.00008       //Weight per unit volume in N/sq.mm
A2=400          //Area of bar at lower end in sq.mm

//Calculation
sigma=int(P/A2)           //Uniform stress on the bar in N/sq.mm
A1=(A2*(%e^((w*L/sigma))))

//Result
printf("\n Area of the bar at the upper end = %0.3f  mm^2",A1)

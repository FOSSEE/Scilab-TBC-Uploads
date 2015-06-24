//Example 7.10
//Calculate the view factors of the surfaces.
//Given
ds=0.3         //m, diameter of shell
r1=0.1         //m, distance from the  centre
//Calculation
//by the defination of view factor
F12=1
printf("The view factor from surface 1 to 2 is %f\n",F12)
//F21
R=ds/2          //m, radius of sphere
r2=sqrt(R^2-r1^2)
A1=%pi*r2^2      //m^2 area
A2=2*%pi*R^2+2*%pi*R*sqrt(R^2-r2^2)
//from reciprocity relation
F21=(A1/A2)*F12
printf("The view factor from surface 2 to 1 is %f\n",F21)

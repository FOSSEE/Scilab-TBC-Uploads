//example-10.4
//page no-313
//given
//diameter of ball
D=0.5*10   //mm
//indentation diameter
d=32.5/10  //mm (diveided by 10 because it is 10 times magnified)
//from table- 10.3 of book , the load for steel specimen is
P=30*D^2  //kg f
//hardness
BHN=P/[(%pi)*D/2*{D-sqrt(D^2-d^2)}]  
printf ("the hardness is %f" ,BHN)

clc 
// Given that  
d=10//in mm diameter of drill bit
f=0.2//in mm/rev feed
N=800//in rpm spindle rotation

// Sample Problem on page no. 632

printf("\n # Material Removal Rate and Torque in Drilling # \n")

MRR=[((3.14*(d^2))/4)*f*N]/60
printf("\n\n Material Removal Rate %d=mm^3/sec",MRR)

//Answer in the book is given 210 mm^3/sec

//from the book data an average unit power of 0.5Ws/mm2 for magnesium is taken
T=(MRR*0.5)/((N*2*3.14)/60)
printf("\n\n Torque on the drill %f=Nm",T)



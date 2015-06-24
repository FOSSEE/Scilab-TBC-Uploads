//Example 7.13
//Calculate the net rate of heat loss
//from unit length of pipe by radiation if
//(a) tha pipe surface is considered black
//(b) the pipe surface has an emissivity of 0.74

//Variables declaration
d=0.114          //m, dia.o f pipe
l=1                 //m,  length of pipe
A=(%pi)*d*l  //m sq,  area
e1=1             //emmisivity of black body
F12= 1           //view factor, 1:pipe surface, 2:room walls
s=5.67*10^-8    //stephen boltzman constant
T1= 440          //K, steam temp.
T2=300           //K, wall temp.
//Caluclation
Q12=A*e1*F12*s*(T1^4-T2^4)  //net rate of radiative heat loss

//Results
printf("(a) Net rate of radiative heat loss Q12 =%f W \n",Q12)
//Part-b
e2=0.74
Q12=A*e2*F12*s*(T1^4-T2^4)  //net rate of radiative heat loss
printf("(b) Net rate of radiative heat loss Q12 =%f W",Q12)

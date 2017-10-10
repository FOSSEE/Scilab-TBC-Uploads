clear
//Given
R1=15.0                          // ohm
R2=15.0
E=2
V=1.6

//Calculation
R=R1*R2/(R1+R2)
r=((E/V)-1)*R*4

//Result
printf("\n Internal resisatnce of each cell is  %0.3f  ohm", r)

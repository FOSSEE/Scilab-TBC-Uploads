//To find speed of output shaft
clc
//Given:
TB=20, TC=80, TD=80, TE=30, TF=32
NB=1000 //rpm
//Solution:
//Refer Fig. 13.23 and Table 13.19
//Speed of the output shaft when gear C is fixed:
//Calculating the values of x and y
//From the fourth row of the table, y-x*(TB/TC) = 0                .....(i)
//Also, x+y = +1000, or y+x = 1000                                 .....(ii)
A=[1 -TB/TC; 1 1]
B=[0; 1000]
V=A \ B
x=V(2)
y=V(1)
//Calculating the speed of output shaft
NF1=y-x*(TB/TD)*(TE/TF) //Speed of the output shaft when gear C is fixed, rpm
//Speed of the output shaft when gear C is rotated at 10 rpm counter clockwise:
//Calculating the values of x and y
//From the fourth row of te table, y-x*(TB/TC) = +10                .....(iii)
//Also, x+y = +1000, or y+x = 1000                                 .....(iv)
A=[1 -TB/TC; 1 1]
B=[10; 1000]
V=A \ B
x=V(2)
y=V(1)
//Calculating the speed of output shaft
NF2=y-x*(TB/TD)*(TE/TF) //Speed of the output shaft when gear C is rotated at 10 rpm counter clockwise, rpm
//Results:
printf("\n\n Speed of the output shaft when gear C is fixed = %.1f rpm, counter clockwise.\n\n",NF1)
printf(" Speed of the output shaft when gear C is rotated at 10 rpm counter clockwise = %.1f rpm, counter clockwise.\n\n",NF2)
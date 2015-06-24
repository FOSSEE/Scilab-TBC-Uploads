//To find number of teeth and speed
clc
//Given:
NA=300 //rpm
TD=40, TE=30, TF=50, TG=80, TH=40, TK=20, TL=30
//Solution:
//Refer Fig. 13.18 and Table 13.13
//Calculating the speed of wheel E
NE=NA*(TD/TE) //rpm
//Calculating the number of teeth on wheel C
TC=TH+TK+TL
//Speed and direction of rotation of shaft B:
//Calculating the values of x and y
//We have, -x-y = -400, or x+y = 400                    .....(i)
//Also, x*(TH/TK)*(TL/TC)-y = 0                         .....(ii)
A=[1 1; (TH/TK)*(TL/TC) -1]
B=[400; 0]
V=A \ B
x=V(1)
y=V(2)
//Calculating the speed of wheel F
NF=-y //rpm
//Calculating the speed of shaft B
NB=-NF*(TF/TG) //Speed of shaft B, rpm
//Results:
printf("\n\n Number of teeth on wheel C, TC = %d.\n\n",TC)
printf(" Speed of shaft B = %d rpm, anticlockwise.\n\n",NB)
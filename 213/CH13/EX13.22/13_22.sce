//To find holding torque
clc
//Given:
TB=15, TA=60, TC=20
omegaY=740, omegaA=omegaY //rad/s
P=130*1000 //W
//Solution:
//Refer Fig. 13.29 and Table 13.24
//Calculating the number of teeth on wheel D
TD=TA-(TC+TB)
//Calculating the values of x and y
//From the fourth row of the table, y-x*(TD/TC)*(TB/TA) = 740            .....(i)
//Also, x+y = 0, or y+x = 0                                              .....(ii)
A=[1 -(TD/TC)*(TB/TA); 1 1]
B=[740; 0]
V=A \ B
x=V(2)
y=V(1)
//Calculating the speed of shaft X
omegaX=y //rad/s
//Holding torque on wheel D:
//Calculating the torque on A
Ta=P/omegaA //Torque on A, N-m
//Calculating the torque on X
Tx=P/omegaX //Torque on X, N-m
//Calculating the holding torque on wheel D
Td=Tx-Ta //Holding torque on wheel D, N-m
//Results:
printf("\n\n Speed of shaft X, omegaX = %.1f rad/s.\n\n",omegaX)
printf(" Holding torque on wheel D = %.1f N-m.\n\n",Td)
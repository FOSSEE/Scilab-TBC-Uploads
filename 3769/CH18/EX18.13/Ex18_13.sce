clear
//Given
A=72                          //Degree
ab=56.4                       //Degree
ar=53                          //Degree
ay=54.6                        //Degree
az=54
A11=60                         //Degree
ab1=52.8                       
A12=50.6
A13=51.9

//Calculation
//
A1=(A+ay)/2.0
A2=A/2.0
ub=(sin(A1*3.14/180.0))/(sin(A2*3.14/180.0))
A3=(A+ar)/2.0
ur=(sin(A3*3.14/180.0))/(sin(A2*3.14/180.0))
A4=(A+az)/2.0
uy=(sin(A4*3.14/180.0))/(sin(A2*3.14/180.0))
w=(ub-ur)/(uy-1)

//For flint glass prism
A5=(A11+ab1)/2.0
A51=A11/2.0
ub1=(sin(A5*3.14/180.0))/(sin(A51*3.14/180.0))
A6=(A11+A12)/2.0
ur1=(sin(A6*3.14/180.0))/(sin(A51*3.14/180.0))
A7=(A11+A13)/2.0
uy1=(sin(A7*3.14/180.0))/(sin(A51*3.14/180.0))
w1=(ub1-ur1)/(uy1-1)
w2=w/w1

//Result
printf("\n The ratio of dispersive power of crown glass and flint glass prism is %0.3f  ",w2)

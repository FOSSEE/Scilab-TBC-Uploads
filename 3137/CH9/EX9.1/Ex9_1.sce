//Calculations
//Simplifying  equation (3) after substituting value of Nb in it we get
//m_u^2+m_u*2*tand(50)-1=0
//Solution of the equation
a=1
b=2*tand(50)
c=-1
g=sqrt(b^2-(4*a*c))
//solution
x1=(-b+g)/(2*a)
x2=(-b-g)/(2*a)
//As x2 does not make any physical sense x1 is the answer
//Result
clc
printf('The value of mu is %f',x1)

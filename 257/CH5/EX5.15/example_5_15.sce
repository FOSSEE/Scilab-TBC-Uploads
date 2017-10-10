s=%s

 //to find C/E

a=10/(s*(s+1))
b=a/(1+(a*0.5*s))
c=b*(s+4)                          //shifting the summer to the left 

//(s^2+6*s)/(10*(s+4)) * C == E + 3/(s+4)*(E+C)
Y= 10*(s+7)/(s^2+6*s-30)               //solving the above equation

disp(Y,"C/E = ")

// to find C/R

d=c/(1+c*1)                           //using the associative law, exchange two summing points
e=1+(3/(s+4))
X= d*e

disp(X," C/R = ")

// to find C/N if r(s)=0

x= (-0.5*s)-(s+4)
k=10/(s*(s+1))
f=k*x                 //removing the summing point
V=1/(1-f)
disp(V,"C/N = ")

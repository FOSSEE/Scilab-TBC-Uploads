//Example 2.6
//Calculate the temprature gradient at each end of the rod
//and the temprature midway in the rod at steady state
//Given
d=0.05        //m, diameter of rod
l=0.5         //m, length of rod
T1=30         //CTemp. at  one end (1)
T2=300        //C, temp  at other end (2)
T=poly(0,'T')
k=202+0.0545*T       //W/mC thermal conductivity of metal

//CALCULATION OF HEAT FLUX
x1=l/2         //m, at mid plane
//temprature distribution ,
//comparing with quadratic eq. ax^2+bx+c 
//and its solution as x=(-b+sqrt(b^2-4*a*c))/2*a
a=1.35*10^-4
b=1
c=-(564*x1+30.1)
T=(-b+sqrt(b^2-4*a*c))/(2*a)
printf("the temprature midway in the rod at steady state is %f C\n",T)

//Temprature gradient at the ends of the rod
x2=0               //m, at one end
a1=1.35*10^-4
b1=1
c1=-(564*x2+30.1)
T1=(-b1+sqrt(b1^2-4*a1*c1))/(2*a1)
k1=202+0.0545*T1   
C1=113930           //integration constant from eq. (1)
TG1=C1/k1           //C/W, temprature gradient, dT/dx
//similarly
x3=0.5
a2=1.35*10^-4
b2=1
c2=-(564*x3+30.1)
T2=(-b2+sqrt(b2^2-4*a2*c2))/(2*a2)
k2=202+0.0545*T2
TG2=C1/k2
printf("Temprature gradient at one end of the rod is %f C/W\n",TG1)
printf("Temprature gradient at other end of the rod is %f C/W",TG2)



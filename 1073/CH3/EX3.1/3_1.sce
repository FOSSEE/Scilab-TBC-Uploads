clc;
clear;
//Example 3.1
mu=10^-3        //N.s/m^2
//At distance y from surface
//ux=a+by+cy^2+dy^3
//At y=0,ux=0 therefore a=0
//i.e tao=0
//At edge of boundary layer,ie y=del
//ux=u_inf
//At y=o,c=0
//At y=del,ux=b*del+d*del^3

//Therefore, b=-3*d*del^3
//d=-u_inf/(2*del^2)
//b=3*u_inf/(2*del)

//For velocity profile,we have:
//del/x=4.64*(Nre_x)^(-1/2)

//Evaluate N re_x

x=75;        //[mm]
x=x/1000;        //[m]
u_inf=3;            //[m/s]
rho=1000            //[kg/m^3] for air
Nre_x=u_inf*rho*x/mu        //Reynold number
//Substituting the value,we get
del=x*4.64*(Nre_x^(-1/2))       //[m]
printf("\nBoundary layer thickness is del=%f m or %f mm",del,del*1000);
printf("\nWrong units in answer of book,m and mm are wrongly interchanged");

//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 7.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given 
n1=1.503;//refractive index of film
n2=1.500;//refractive index of cover
d=4e-6;//thickness of film in m


//Case(1)
lambda0=1e-6;//wavelength  in m
k0=2*(%pi)/lambda0;//free space wave number in rad/m
funcprot(0);//To avoid warning message when function is redefined
mprintf("\n For 1st value of lambda:");
V=k0*d*sqrt((n1^2)-(n2^2));//dimensionless waveguide parameter
mprintf("\n V=%f",V);//The answers vary due to round off error

//To find Xi for symmetric TE mode
deff('t=f(Xi)','t=V/2*cos(Xi)-Xi');//Rearranging the terms of eqn for symmetric TE modes i.e. 'ξtanξ=((V/2)^2-ξ^2)', we get 'ξ=V/2*cos(ξ)'
Xi0=0;//Starting value of Xi
Xi=fsolve(Xi0,f);//Root of eqn 't=0'
mprintf("\n For symmetric mode ξ=%f",Xi);//The answers vary due to round off error
b=1-(Xi^2)/(V^2/4);//dimensionless propagation constant
mprintf("\n b=%f",b);
B=sqrt(b*((n1^2)-(n2^2))+(n2^2));
mprintf("\nBeta/k0=%f",B);//The answers vary due to round off error


//Case(2)
lambda0=0.5e-6;//wavelength  in m
k0=2*(%pi)/lambda0;//phase constant in rad/m
mprintf("\n\n For 2nd value of lambda:");
V=k0*d*sqrt((n1^2)-(n2^2))//dimensionless waveguide parameter
mprintf("\n V=%f ",V);//The answers vary due to round off error

//To find Xi for symmetric TE mode
deff('t=f(Xi)','t=V/2*cos(Xi)-Xi');//Rearranging the terms of eqn for symmetric TE modes i.e. 'ξtanξ=((V/2)^2-ξ^2)^(1/2)', we get 'ξ=V/2*cos(ξ)'
Xi0=0;//Starting value of Xi
Xi=fsolve(Xi0,f);//Root of eqn 't=0'
mprintf("\n For symmetric mode ξ=%f",Xi);//The answers vary due to round off error
b=1-(Xi^2)/(V^2/4);//dimensionless propagation constant
mprintf("\n b=%f",b);
B=sqrt(b*((n1^2)-(n2^2))+(n2^2));
mprintf("\nBeta/k0=%f",B);
//To find Xi for antisymmetric TE mode
deff('t=f(Xi)','t=V/2*sin(Xi)-Xi');//Rearranging the terms of eqn for antisymmetric TE modes i.e. '-ξcotξ=((V/2)^2-ξ^2)^(1/2)', we get 'ξ=V/2*sin(ξ)'
Xi0=1;//Starting value of Xi
Xi=fsolve(Xi0,f);//Root of eqn 't=0'
mprintf("\n For antisymmetric mode ξ=%f",Xi);//The answers vary due to round off error
b=1-(Xi^2)/(V^2/4);//dimensionless propagation constant
mprintf("\n b=%f",b);
B=sqrt(b*((n1^2)-(n2^2))+(n2^2));
mprintf("\nBeta/k0=%f",B);

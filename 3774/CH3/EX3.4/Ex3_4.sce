// exa 3.4 Pg 65

clc;clear;close;

// Given Data
P=15;// kN
sigma_t=20;// MPa
sigma_c=60;// MPa
n=3;// factor of safety

a=poly(0,'a');// from the diagram.
// Area of cross section
A1=2*a*a;// mm.sq.
A2=2*a*a/2;// mm.sq.
A=A1+A2;// mm.sq. 

// Location of neutral axis
//3*a**2*y_bar=2*a**2*a/2+a**2*(a+a/2)
y_bar=(2*a**2*a/2+a**2*(a+a/2))/(3*a**2);// mm

// Moment of Inertia about neutral axis N-A
I=2*a*a**3/12+2*a**2*(y_bar-0.5*a)**2+2*((a/2)*(a**3/12)+(a**2/2)*(1.5*a-y_bar)**2);// mm^4
yt=y_bar;//mm
yc=2*a-y_bar;// mm
e=y_bar-0.5*a;//mm
M=P*10**3*e;// N.mm
sigma_d=P*10**3/A;// N/mm.sq.
sigma_t1=M*yt/I;//N/mm.sq.
sigma_c1=M*yc/I;//N/mm.sq.
sigma_r_t=sigma_d+sigma_t1;// N/mm.sq. (sigma_r_t=resultant tensile stress at AB=sigma_d+sigma_t)
sigma_r_c=sigma_c1-sigma_d;// N/mm.sq. (sigma_r_t=resultant tensile stress at AB=sigma_d+sigma_t)

//equating resulting tensile stress with given value sigma_t-sigma_r_t=0...eqn(1)
expr1=sigma_t-sigma_r_t;// expression of polynomial from above eqn.
a1=roots(numer(expr1));// solving the equation (as denominator will me be multiplied by zero on R.H.S)
a1=a1(2);// mm // discasrding -ve roots
printf('Equating resultant tensile stress gives, a = %.2f mm',a1)

//equating resulting compressive stress with given value sigma_c-sigma_c_t=0...eqn(1)
expr2=sigma_c-sigma_r_c;// expression of polynomial from above eqn.
a2=roots(numer(expr2));// solving the equation (as denominator will me be multiplied by zero on R.H.S)
a2=a2(2);// mm // discarding -ve roots
printf('\n Equating resultant compressive stress gives, a = %.2f mm',a2)
a=ceil(a1);//mm
printf('\n dimension of cross section of link, a=%.2f mm. adopt a=%.f mm.',a1,a)

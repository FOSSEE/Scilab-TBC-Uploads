// exa 4.11 Pg 117
clc;clear;close;

// Given Data
Sut=600;//MPa
Syt=400;//MPa
Se=200;//MPa
Mmin=200;// N.m
Mmax=500;// N.m
Tmin=60;// N.m
Tmax=180;// N.m
n=2;// factor of safety

Mm=(Mmax+Mmin)/2;// N.mm
Ma=(Mmax-Mmin)/2;// N.mm
Tm=(Tmax+Tmin)/2;// N.mm
Ta=(Tmax-Tmin)/2;// N.mm
// sigma_xm=32*Mm/%pi/d**3
sigma_xm_into_d_cube=(32*Mm*1000)/%pi;
// sigma_xa=32*Ma/%pi/d**3
sigma_xa_into_d_cube=(32*Ma*1000)/%pi;
//Txym=16*Tm/%pi/d**3
Txym_into_d_cube=16*Tm*1000/%pi;
//Txya=16*Ta/%pi/d**3
Txya_into_d_cube=16*Ta*1000/%pi;
// sigma_m=sqrt(sigma_xm**2+3*Txym**2)
sigma_m_dash=sqrt(sigma_xm_into_d_cube**2+3*Txym_into_d_cube**2);// taken sigma_m_dash = sigma_m*d**(-3) for calculation
// sigma_a=sqrt(sigma_xa**2+3*Txya**2)
sigma_a_dash=sqrt(sigma_xa_into_d_cube**2+3*Txya_into_d_cube**2);// taken sigma_a_dash = sigma_a*d**(-3) for calculation
//tan(theta) = sigma_a/sigma_m
theta = atan(sigma_a_dash/sigma_m_dash);// radian
//Sm/Sut+Sa/Se= 1 where Sa/Sm=0.4348 
Sm= 1/(1/Sut+0.4348/Se);// MPa
Sa=0.4348 * Sm;// MPa
//sigma_a=Sa/n
d=(Sa/n/sigma_a_dash)**(1/3)*1000;// mm
printf('\n diameter of shaft, d = %.2f mm',d)
// Note - Ans in the textbook is wrong.

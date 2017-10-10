// exa 4.20 Pg 124
clc;clear;close;

// Given Data
Mmin=200;// kN.mm
Mmax=600;// kN.mm
Tmin=60;// kN
Tmax=180;// kN
Su=550;// MPa
Sy=400;// MPa
Se=0.5*Su;// MPa
n=1.5;// factor of safety
Ktb=1.5;// stress concentration factor in blending
Kts=1.2;// stress concentration factor in torsion

Mm=(Mmax+Mmin)/2;// kN.mm
Ma=(Mmax-Mmin)/2;// kN.mm

//sigma_xm=32*Mm/%pi/d**3
sigma_xm_into_d_cube=32*Mm/%pi;
//sigma_xa=32*Ma/%pi/d**3
sigma_xa_into_d_cube=32*Ma/%pi;
Tm=(Tmax+Tmin)/2;// kN.mm
Ta=(Tmax-Tmin)/2;// kN.mm
Txym_into_d_cube=16*Tm/%pi;
Txya_into_d_cube=16*Ta/%pi;
// using distortion energy theory
// sigma_m=sqrt(sigma_xm**2+3*Txym**2)
sigma_m_into_d_cube=sqrt(sigma_xm_into_d_cube**2+3*Txym_into_d_cube**2);
// sigma_a=sqrt((Ktb*sigma_xa)**2+3*(Kts*Txym)**2)
sigma_a_into_d_cube=sqrt((Ktb*sigma_xa_into_d_cube)**2+3*(Kts*Txya_into_d_cube)**2);
// Sodeburg equation - sigma_m + (Su/Se)*sigma_a=Sy/n
d=((sigma_m_into_d_cube + (Su/Se)*sigma_a_into_d_cube)*1000/(Sy/n))**(1/3)
printf('\n shaft size, d = %.f mm',d)

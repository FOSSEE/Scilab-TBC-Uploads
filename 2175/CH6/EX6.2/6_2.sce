clc;
R=8.3145;
m_o=31.999;
m_n=28.013;
m_a=39.948;
m_c=44.010;

R_O=R/m_o;
R_N=R/m_n;
R_A=R/m_a;
R_C=R/m_c;

miO=0.2314;
miN=0.7553;
miA=0.0128;
miC=0.0005;

R_=(miO*R_O)+(miN*R_N)+(miA*R_A)+(miC*R_C);

m_=R/R_
disp("specific gas constant of air is:")
disp(R_)
disp("molar mass of gas is:");
disp(m_)

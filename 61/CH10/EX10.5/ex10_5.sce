//ex10.5
R_C=10*10^3;
C3=0.1*10^-6;
R_L=10*10^3;
A_v_mid=50;
f_c=1/(2*%pi*(R_L+R_C)*C3);
disp(f_c,'lower critical frequency in hertz')
//at midrange capacitive reactance is zero
X_C3=0;
attenuation=R_L/(R_L+R_C);    
disp(attenuation,'attenuation at midrange frequency')
//at critical frequency, capacitive reactance equals total resistance
X_C3=R_L+R_C;
attenuation=R_L/(sqrt((R_C+R_L)^2+X_C3^2));
disp(attenuation,'attenuation at critical frequency')
A_v=0.707*A_v_mid;
disp(A_v,'gain at critical frequency')
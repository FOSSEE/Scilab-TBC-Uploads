clc;
pi=3.14
L=100*1e-3 //in henry
C=27*1e-12 //in faraday
R=10 //in ohm
V_S=50 //in volt
fr=1/(2*pi*sqrt(L*C))
//first we will find all parameter atfrequency 2 KHz below resonant frequency
Z_T=L/(R*C);
X_L=2*pi*(fr-2000)*L;
X_C=1/(2*pi*(fr-2000)*C);
Z_T=(complex(X_L)*(-complex(X_C)))/(complex(X_L)-complex(X_C))
disp(+'ohm',Z_T,'Z_T at 2 KHz below resonant frequency =')
I_C=V_S/X_C;
disp(+'ampere',I_C,'I_C at 2 KHz below resonant frequency = ')
I_L=V_S/X_L;
disp(+'ampere',I_L,'I_L at 2 KHz below resonant frequency = ')
//since I_L and I_C are 180 degree out of phase with each other
I_line=I_L-I_C
disp(+'ampere',I_line,'I_Line at 2 KHz below resonant frequency = ')


//Now we will find all parameter atfrequency 2 KHz above resonant frequency
Z_T=L/(R*C);
X_L=2*pi*(fr+2000)*L;
X_C=1/(2*pi*(fr+2000)*C);
Z_T=(complex(X_L)*(-complex(X_C)))/(complex(X_L)-complex(X_C))
disp(+'ohm',Z_T,'Z_T at 2 KHz above resonant frequency =')
I_C=V_S/X_C;
disp(+'ampere',I_C,'I_C at 2 KHz above resonant frequency = ')
I_L=V_S/X_L;
disp(+'ampere',I_L,'I_L at 2 KHz above resonant frequency = ')
//since I_L and I_C are 180 degree out of phase with each other
I_line=I_L-I_C
disp(+'ampere',I_line,'I_Line at 2 KHz above resonant frequency = ')

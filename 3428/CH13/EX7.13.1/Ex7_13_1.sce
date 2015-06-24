//Section-7,Example-1,Page no.-O.38
clc;
a_1=-1.2
l_1=0.5
d=6.15*10^-2
C_a=a_1/(l_1*d)
disp(C_a,'Specific rotation of cholestrol')
l_2=1
a_2=(C_a*l_2*d)
disp(a_2,'Observed rotation')
d_2=(61.5*10^-2)/20
l_3=0.5
a_3=C_a*l_3*d_2
disp(a_3,'Observed rotation')

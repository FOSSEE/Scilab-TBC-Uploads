// scilab Code Exa 8.1 Calculation on a compressor cascade

V1=75; // Absolute Velocity of air at entry in m/s
alpha1=48; // air angle at entry
alpha2=25; // air angle at exit
p=1.1; // pitch-chord ratio
delps=11; // stagnation pressure loss in mm W.G.
ro=1.25; // density of air in kg/m3
g=9.81;
a=0.5*(tand(alpha1)+tand(alpha2)); 
alpham=atand(a);
b=0.5*ro*(V1^2);
Y=delps*g/b;
disp (Y,"the loss coefficient is")
c=(cosd(alpham)^3)/(cosd(alpha1)^2);
C_D=p*Y*c;
disp (C_D,"the drag coefficient is")
d=2*p*(tand(alpha1)-tand(alpha2))*cosd(alpham);
e=C_D*tand(alpham);
C_L=d-e;
disp (C_L,"the Lift coefficient is")
f=(cosd(alpha1)^2)/(cosd(alpha2)^2);
C_ps=1-f;
disp (C_ps,"the Ideal pressure recovery coefficient is")
C_pa=C_ps-Y;
disp (C_pa,"the Actual pressure recovery coefficient is")
n_D=C_pa/C_ps;
disp (n_D,"the Diffuser efficiency is")
n_dmax=1-(2*C_D/C_L);
disp (n_dmax,"the Maximum Diffuser efficiency is")

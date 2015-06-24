// scilab Code Exa 18.4 Calculation on a Diffuser 

pe=35; // Initial Pressure in mm W.G.
pa=1.0135; // ambient pressure in bar
c1=100; // entry velocity in m/s
C_pa=0.602; // actual pressure recovery coefficient
ro=1.25; // density in kg/m3
g=9.81; // Gravitational acceleration in m/s^2
Ar=1.85; // Area Ratio of Diffuser

// part(a)
C_ps=1-(1/(Ar^2));
disp(C_ps,"(a)ideal value of the pressure recovery coefficient is")

// part(b)
n_D=C_pa/C_ps;
disp ("%",n_D*1e2,"(b)Efficiency of the diffuser is")

// part(c)
p1=pa+(pe*g*1e-5);
p01=p1+(0.5*ro*(c1^2)*1e-5);
delp_0=(C_ps-C_pa)*(0.5*ro*(c1^2)*1e-5);
disp("mm W.G.",delp_0*1e5/g,"(c)the stagnation pressure loss across the diffuser is")

// part(d)
p02=p01-delp_0;
c2=c1/Ar;
p2=p02-(0.5*ro*(c2^2)*1e-5);
disp("mm W.G.",(p2-pa)*1e5/g,"(d)the gauge pressure at the diffuser exit is")

q = 3200 ; // Uniform load intensity in N/m
b = 0.3; // width of beam in m
h = 0.08 ; // Height of the beam in m
t = 0.012 ; // thickness of beam in m
Ra = 3600 ; // Reaction at A in N
Rb = 10800 ; // Reaction at B in N
Mpos = 2025 ; // Moment in Nm
Mneg = -3600 ; // Moment in Nm
y1 = t/2;
A1 = (b-2*t)*t ; 
y2 = h/2;
A2 = h*t ; 
A3 = A2 ; 
c1 = ((y1*A1)+(2*y2*A2))/((A1)+(2*A2));
c2 = h - c1 ;
Ic1 = (b-2*t)*(t^3)*(1/12);
d1 = c1-(t/2);
Iz1 = (Ic1)+(A1*(d1^2));
Iz2 = 956600e-12;
Iz3 = Iz2 ;
Iz = Iz1 + Iz2 + Iz3 ; // Moment of inertia of the beam cross section
// Section Modulli
S1 = Iz / c1 ; // for the top surface
S2 = Iz / c2 ; // for the bottom surface
// Maximum stresses for the positive section
st = Mpos / S2 ;
disp("Pa",st,"Maximum tensile stress in the beam in positive section is")
sc = -Mpos / S1 ;
disp("Pa",sc,"Maximum compressive stress in the beam in positive section is")
// Maximum stresses for the negative section
snt = -Mneg / S1 ;
disp("Pa",snt,"Maximum tensile stress in the beam in negative section is")
snc = Mneg / S2 ;
disp("Pa",snc,"Maximum compressive stress in the beam in negative section is")
// Conclusion
st_max = st;
sc_max = snc ;

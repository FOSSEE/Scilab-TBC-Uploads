L = 6 ; // Span of the beam in ft
P = 10800 ; // Pressure acting in lb
c = 2 ; // in ft
b = 2; // Width of cross section of the beam in inch
h = 6; // Height of the cross section of the beam in inch
x = 9 ; // in inch
Ra = P/3 ; // Reaction at point at A
V = Ra ; // Shear force at section mn 
M = Ra*x ; // Bending moment at the section mn
I = (b*h^3)/12  // Moment of inertia in in4
y = -3:0.1:3 ; // Variation along height
sx = -(M/I)*y; // Normal stress on  crossection  mn
Q = (b*(h/2-y)).*(y+((((h/2)-y)/2))) ; // First moment of rectangular cross section
txy = (V*Q)/(I*b);// Shear stress acting on x face of the stress element
s1 = (sx/2)+sqrt((sx/2).^2+(txy).^2) ; // Principal Tesile stress on the cross section
s2 = (sx/2)-sqrt((sx/2).^2+(txy).^2) ; // Principal Compressive stress on the cross section
tmax = sqrt((sx/2).^2+(txy).^2); // Maximum shear stress on the cross section
plot(sx,y,'o')
plot(txy,y,'+')
plot(s1,y,'--')
plot(s2,y,'<')
plot(tmax,y)
disp("psi",s1,"Principal Tesile stress on the cross section")
disp("psi",s2," Principal Compressive stress on the cross section")
// Conclusions 
s1_max = 14400 ; // Maximum tensile stress in Psi
txy_max = 900 ; // Maximum shear stress in Psi
t_max = 14400/2 ; // Largest shear stress at 45 degree plane

// example:-3.10,page no.-114.
// program to calculate attenuaton due to conductor loss of a coaxial line using incremental inductance rule.
syms Zo eta pi a b Rs l alpha alpha_c alpha_dash delta alpha_c_dash sigma w mue;
sd=sqrt(2/(w*mue*sigma))
Zo=(eta*log(b/a))/(2*pi);
alpha_c=(Rs/(4*Zo*pi^2))*(diff(log(b/a),b)-diff(log(b/a),a));
disp(alpha_c,'attenuation due to conductor loss = ')
alpha_c_dash=alpha_c*(1+((2/pi)*atan((1.4*delta)/sd)));
disp(alpha_c_dash,'attenuation corrected for surface roughness = ')
// Scilab Code Ex6.8: Page-199 (2006)
clc; clear;
k = 1.38e-023;  // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
T = [385 455 556 714];      // Temperatures of Ge, K
rho = [0.028 0.0061 0.0013 0.000274];   // Electrical resistivity, ohm-m
Tinv = zeros(4);    // Create an empty row matrix for 1/T
ln_sigma = zeros(4);  // Create the empty row matrix for log(sigma)
for i = 1:1:4
    Tinv(i) = 1/T(i);
    log_sigma(i) = log(1/rho(i));
end
// Plot the graph
plot(Tinv, log_sigma);
a=gca(); // Handle on axes entity
a.box="off";
a.x_location = "origin"; 
a.y_location = "origin";
a.x_label
a.y_label 
a.title
type(a.title);
x_label=a.x_label;
x_label.text="1/T";
x_label.font_style= 5;
y_label=a.y_label;
y_label.text="ln (sigma)";
y_label.font_style= 5;
t=a.title;
t.foreground=9;
t.font_size=4;
t.font_style=5;
t.text="Plot of ln (sigma) vs 1/T";
// Calculate slope
slope = (log_sigma(2)-log_sigma(1))/(Tinv(2)-Tinv(1));
E_g = abs(2*slope*k);        // Energy gap of Ge, J
printf("\nThe energy gap of Ge = %5.3f eV", E_g/e);

// Result 
// The energy gap of Ge = 0.658 eV 

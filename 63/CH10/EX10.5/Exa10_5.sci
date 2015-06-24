//Determine the formula for the cutoff wavelength in a standard rectangular waveguide for the TM11 mode

m = 1;
n = 1;
a = 1;
b = a/2;

lambda0 = 2/sqrt((m/a)^2 + (n/b)^2);

disp('*a', lambda0, 'Formula for the cutoff wavelength in a standard rectangular waveguide for the TM11 mode',)
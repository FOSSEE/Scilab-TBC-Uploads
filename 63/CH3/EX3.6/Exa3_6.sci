//Determine modulation index due to this second wave

It1 = 11;
m1 = .40;
It2 = 12;

Ic = It1/sqrt(1+(m1^2/2));
mt = sqrt(2*( (It2/Ic)^2 - 1 ));

m = sqrt(mt^2 - m1^2);

disp(m, 'Modulation index due to second wave is')
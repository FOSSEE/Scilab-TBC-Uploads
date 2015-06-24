clc;

printf("Example 3.5\n");

// Ux = Ucl*(y/r)^l/7     equation 3.59 (Prandtl one-seventh power law)
//where UCL is the velocity at the centre line of the pipe, and r is the radius of the pipe.
// Then total flow, Q = 49/60*pi*r^2*Ucl     equation 3.62

//When the flow in the central core is equal to the flow in the surrounding annulus, then taking a = y/r, the flow in the central core is:
//Qc=pi*r^2*Ucl*(105*a^(8/7)-56*a^(15/7))/60
//flow in the core = 0.5 (flow in the whole pipe)

r=50;
a=poly([0],'a');
p=roots((a^8*(105-56*a)^7)-24.5^7);

printf("\n a = %.2f",p(8));
y=p(8)*r;
printf("\n y = %.1f mm",y)
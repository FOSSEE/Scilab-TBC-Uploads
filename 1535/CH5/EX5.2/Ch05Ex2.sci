// Scilab Code Ex5.2 : Percentage transmission of polarized light: Page-113 (2010)
I0 = 1;    // For simplicity, we assume the intensity of light falling on the second Nicol prism to be unity, watt per metre square
theta = 30;    // Angle through which the crossed Nicol is rotated, degrees
I = I0*cosd(90-theta)^2;    // Intensity of the emerging light from second Nicol, watt per metre square
T = I/(2*I0)*100;    // Percentage transmission of incident light
printf("\nThe percentage transmission of incident light after emerging through the Nicol prism = %4.1f percent", T);

// Result 
// The percentage transmission of incident light after emerging through the Nicol prism = 12.5 percent 
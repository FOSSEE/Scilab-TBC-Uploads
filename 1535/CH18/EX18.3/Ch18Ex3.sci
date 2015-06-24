// Scilab Code Ex18.3: Total absorption of sound in the hall: Page-361 (2010)
V = 8000;    // Volume of the hall, metre cube
T = 1.5;    // Reverbration time of the hall, s
alpha_s = 0.167*V/T;    // Sabine Formula giving total absorption of sound in the hall, OWU
printf("\nThe total absorption of sound in the hall = %5.1f OWU", alpha_s);

// Result
// The total absorption in the hall = 890.7 OWU 
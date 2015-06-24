// Scilab Code Ex18.4: Average absorption coefficient of the surfaces of the hall: Page-362 (2010)
V = 25*20*8;      // Volume of the hall, metre cube
S = 2*(25*20+25*8+20*8);    // Total surface area of the hall, metre square
T = 4;    // Reverbration time of the hall, s
alpha = 0.167*V/(T*S);    // Sabine Formule giving total absorption in the hall, OWU
printf("\nThe total absorption in the hall = %5.3f OWU per metre square", alpha);

// Result
// The total absorption in the hall = 0.097 OWU per metre square
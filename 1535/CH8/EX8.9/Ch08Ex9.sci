// Scilab Code Ex8.9: Page-174 (2010)
c = 1;    // For simplicity assume speed of light to be unity, m/s
m0 = 1;    // For simplicity assume rest mass to be unity, kg
m = (20/100+1)*m0;    // Mass in motion, kg
// As m = m0/sqrt(1-(u/c)^2), solving for u
u = sqrt(1-(m0/m)^2)*c;    // Speed of moving mass, m/s 
printf("\nThe speed of moving body, u = %5.3fc", u);

// Result
// The speed of moving body, u = 0.553c 

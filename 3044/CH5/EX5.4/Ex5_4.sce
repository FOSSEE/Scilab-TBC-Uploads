// Variable Declaration 

// Calculation

// (A) between 0.87 and 1.28
// p1 = p( at 1.28 ) - p( at 0.87 )
p1 = 0.8997 - 0.8078              // probability between 0.87 and 1.28

// (B) between -0.34 and 0.62
// p2 = p( at 0.62 ) - p( at -0.34 )
p2 = 0.7324 - 0.3669              // probability between -0.34 and 0.62
 
// (C) greater than 0.85
// p3 = 1 - p( at 0.85 )
p3 = 1 - 0.8023                   // probability greater than 0.85
 
// (D) greater than -0.65
// p4 = 1 - p( at -0.65 )
p4 = 1 - 0.2578                   // probability greater than -0.65

// Result
printf ( "probability 0.87<x1.28 : %.4f",p1)
printf ( "probability -0.34<x<0.62 : %.4f",p2)
printf ( "probability x>0.85 : %.4f",p3)
printf ( "probability x> (-0.65) : %.4f",p4)

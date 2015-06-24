// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 5: ARMATURE REACTION AND COMMUTATION IN DYNAMOS
// Example 5-2

clear; clc; close; // Clear the work space and console.

// Given data
conductors = 800 ; // No. of conductors 
I_a = 1000 ; // Rated armature current in A
I_l = I_a ; // load or total current entering the armature in A
P = 10 ; // No. of poles
pitch = 0.7 ; // Pole-face covers 70% of the pitch 
a = P ; // No. of parallel paths ( Simplex lap-wound )
alpha = 5 ; // No. of electrical degress that the brushes are shifted 

// Calculations
Z = conductors / P ; // No. of armature conductors/path under each pole
A_Z_per_pole = ( Z * I_l ) / ( P * a ); // Cross magnetizing
// ampere-conductors/pole

At_per_pole = ( 1 / 2 ) * ( 8000 / 1 ); // Ampere-turns/pole

frac_demag_At_per_pole  = (2*alpha) / 180 * (At_per_pole); 
// Fraction of demagnetizing ampere-turns/pole

funcprot(0); // to avoid redefining function: beta warning message

beta = 180 - 2*alpha ; // cross-magnetizing electrical degrees

cross_mag_At_per_pole = (beta/180)*(At_per_pole);
// cross-magnetizing ampere-turns/pole

// Display the results
disp("Example 5-2 Solution : ");
printf(" \n a: With the brushes on the GNA,the entire armature reaction effect");
printf(" \n    is completely cross-magnetizing. The cross-magnetizing  ");
printf(" \n    ampere-conductors/pole are ");
printf(" \n    = %d ampere-conductots/pole \n", A_Z_per_pole);

printf(" \n    and since there are 2 conductors/turn, the cross-magnetizing ");
printf(" \n    ampere-turns/pole are \n    = %d At/pole \n\n", At_per_pole );


printf(" \n b: Let alpha = the no. of electrical degrees that the brushes are ");
printf(" \n    shifted. Then the total no. of demagnetizing electrical degrees ");
printf(" \n    are 2*alpha, while the (remaining) cross-magnetizing electrical");
printf(" \n    degrees,beta, are 180 - 2*alpha. The ratio of demagnetizing to ");
printf(" \n    cross-magnetizing ampere-turns is always 2*alpha/beta. The ");
printf(" \n    fraction of demagnetizing ampere-turns/pole is ");
printf(" \n    = %.1f At/pole \n\n",frac_demag_At_per_pole );
printf(" \n    Note: Slight calculation mistake in the textbook for case b\n")


printf(" \n c: Since beta = 180-2*alpha = 170, the cross-magnetizing ampere-turns/pole ");
printf(" \n    are \n    = %.1f At/pole ", cross_mag_At_per_pole );








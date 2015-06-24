clear ;
clc;
// Example 6.1
printf('Example 6.1\n\n');
// Page no. 142
// Solution

// Given
P_O = 89 ;// Premium octane -[octane/gal]
S_O = 93 ;// Supereme octane - [octane/gal]
R_O = 87 ;// Regular octane - [octane/gal]
CP = 1.269 ;// Cost of premium octane -[$/gal]
SP = 1.349 ;// Cost of supereme octane -[$/gal]
RP = 1.149 ;// Cost of regular octane -[$/gal]

// Let x and y fraction of regular octane and supreme octane is blended respectively,therefore: x + y = 1 ...(a)
// and 89 = 87x + 93y ...(b)
// Solve equations (a) and (b) simultaneously
a = [1 1;87 93] ;// Matrix of coefficients of unknown
b = [1;89] ;// Matrix of constant
c = a\b ;// Matrix of solutons- x = c(1) , y = c(2)
cost =  c(1)*RP + c(2)*SP ;// Cost after blending - [$/gal]
sv = CP - cost ;// Save on blending - [$/gal]

// Check whether there is loss or save
if (sv<0)
   then
    printf('We will not save money by blending.'); 
     
  else
      printf('We will save money by blending, and save is %.3f $/gal.',sv); 
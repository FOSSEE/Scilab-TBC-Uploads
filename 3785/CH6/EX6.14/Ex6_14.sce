// Example 6_14
clc;funcprot(0);
// Given data
// L=10h;
Lbyh=10;

// Calculation
// Re=(V*h)/nu;
Re=Lbyh*(12/1.328)^2;// Reynolds number
printf("For flow velocities having Vh/v «%3.1f. the pressure drop would be given by (a),while for Vh/v »%3.1f it would be given by (b).",Re,Re);
// The answer provided in the text book is wrong
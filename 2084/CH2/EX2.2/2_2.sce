//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.2
//calculation of sum of vectors and difference of the vectors

//given data
A=5; //magnitude(in unit) of A vector
B=5; //magnitude(in unit) of B vector
theta=60; // angle(in degree) between both vectors


//calculation
C=sqrt((A*A)+(B*B)+(2*A*B*cosd(theta))); //C=|A+B| sum of two vectors
thetas=180-theta; //for difference(subtraction) reverse direction of a vector and add it to other
D=sqrt((A*A)+(B*B)+(2*A*B*cosd(thetas))); //D=|A-B| difference of two vectors

disp(C,'the sum of two vectors(in unit) is');
disp(D,'the difference of two vectors(in unit) is');

//Example 11.4.1 Page 409
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;

// N(E) = minimum number of D-dimensional cubes of side E needed to cover S.

n=poly(0,"n")                        //Defining polynomial in "n"
Num = (n*log(2))                    //Num. = Numerator
Den = (n*log(3))                    //Den. = Denominator
disp("The box dimension is :")

d=(Num)/(Den)                       //d = Box Dimension.


//End of Example.
//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.4.1
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given

//case 1
R=0.035;//Reflectivity for the air-silica interface
NAt=0.275;//Typical Numerical Aperture in a GI multimode fiber
D=1;//Ratio of the diameter of the fiber core to the diameter of the source
X=2*(D^2);
Y=1-1/X;
ETAcgi=(NAt^2)*Y;//The amount of light coupling in a GI multimode fiber

mprintf("The amount of light coupling in a GI multimode fiber is = %.3f",ETAcgi);

//case 2
NAt2=0.13;//Typical Numerical Aperture in a SI singlemode fiber
EATcsi=NAt2^2;//The amount of light coupling in a SI singlemode fiber
mprintf("\nThe amount of light coupling in a SI singlemode fiber is = %.3f",EATcsi);
//the answers vary due to rounding 

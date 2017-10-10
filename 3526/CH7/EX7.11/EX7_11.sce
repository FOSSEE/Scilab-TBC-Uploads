clc;funcprot(0);//EXAMPLE 7.11
//page 199
// Initialisation of Variables
N=5.256*10^5;......//No. of cycles that the shaft will  experience in one year
F=12500;.........//applied load  on shaft in lb
L=96;...........//Length of Kliin produced from tool steel in in.
sigma1=72000;...........//the applied stress on Shaft
f=2;............//Factor of saftey of shaft
sigma2=sigma1/f;......//the maximum allowed stress level
//CALCULATIONS
d1=(16*F*L/(sigma1*%pi))^(1/3);..........//The Diameter of Shaft in in.
d2=(16*F*L/(sigma2*%pi))^(1/3);.......//The minimum diameter required to prevent failure
disp(d1,"The Diameter of Shaft in in.:")
disp(d2,"The minimum diameter required to prevent failure in in.:")

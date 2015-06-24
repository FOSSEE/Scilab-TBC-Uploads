//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 15


clear;
clc;


//Given:
x1 = 0.047; //mol fraction of isopropanol
P1 = 91.11; //vapour pessure of pure propanol (kPa)
P = 91.2; //toatl pressure of system (kPa)
P2 = 47.36; //vapour pressure of water (kPa)

//van Laar consatnts:
A = 2.470;
B = 1.094;

//To determine the total pressure:
x2 = 1-x1;
//Using eq. 8.68 (Page no. 348)
ln_g1 = (A*x2^2)/(((A/B)*x1 + x2)^2);
ln_g2 = (B*x1^2)/((x1 + (B/A)*x2)^2);
gama1 = %e^ln_g1;
gama2 = %e^ln_g2;

//Total pressure:
P_tot = (gama1*x1*P1) + (gama2*x2*P2);
if(P==P_tot)
    mprintf('This is equal to total pressure');
else
    mprintf('This is less than the total pressure. This error must have been caused by air leak');
end


//end 
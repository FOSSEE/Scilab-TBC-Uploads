//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.35\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.35  (page no. 218) 
// Solution

//As already noted,h1=h2 for this process.On the Mollier chart,h2 is found to be 1170 Btu/lbm at 14.7 psia and 250 F.Proceeding to the left on the chart,the constant-enthalpy value of 1170 Btu/lbm to 150 psia yields a moisture of 3% or a quality of 97%.
//If we use the tables to obtain the solution to this problem,we would first obtain h2 from the superheated vapor tables as 1168.8 Btu/lbm.Because hx=hf+(x*hfg),we    obtain x as
hx=1168.8; //Btu/lbm 
hf=330.75; //Btu/lbm //values of 150 psia
hfg=864.2; //Btulbm //values of 150 psia
x=(hx-hf)/hfg; //Quality
printf("Moisture in the steam flowing in the pipe is %f percent\n",(1-x)*100);
printf("or quality of the steam is %f percent\n",x*100);
//very often,it is necessary to perform multiple interpolations if the tables are used,and the Mollier chart yields results within the rquired accuracy for most engineering problems and saves considerable time.
//We can also use the computerised programs to solve this program.We first enter the 250F and 14.7 psia to obtain h of 1168.7 Btu/lbm.We then continue by entering h of 1168.7 Btu/lbm and p of 150 psia.The printout gives us x of 0.9699 or 97%.While the computer solution is quick and easy to use,you should still sketch out the    problem on an h-s or T-s diagram to show the path of the process.

// Saturation Properties
//--------------------------
// T=250.00 degF
// P=29.814 psia
//       z         z1        zg
// v(ft^3/lbm)   0.01700   13.830
// h(Btu/lbm)     218.62   1164.1
// s(Btu/lbm*F)  0.3678    1.7001
// u(Btu/lbm)    218.52    1087.8

//Thermo Properties
//------------------------
// T= 250.00 degF
// P= 14.700 psia
// v= 28.417 ft^3/lbm
// h= 1168.7 Btu/lbm
// s= 1.7831 Btu/lbm*F
// u= 1091.4 Btu/lbm

// Saturation Properties
//--------------------------
// T=340.06 degF
// P=118.00 psia
//       z        z1        zg
// v(ft^3/lbm)   0.01787   3.7891
// h(Btu/lbm)    311.39    1190.7
// s(Btu/lbm*F)  0.4904    1.5899
// u(Btu/lbm)    311.00    1108.0

//Thermo Properties
//------------------------
// T= 358.49 degF
// P= 150.00 psia
// v= 2.9248 ft^3/lbm
// h= 1168.7 Btu/lbm
// s= 1.5384 Btu/lbm*F
// u= 1087.5 Btu/lbm
// x= 0.9699

//Region:Saturated

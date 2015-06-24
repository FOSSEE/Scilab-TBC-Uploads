//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.10\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.10  (page no. 518) 
// Solution

printf("Solution for (a)\n");
//By defination,the efficiency of the compressor is the ratio of the ideal compression work to actual compression work.
//Based on the points on fig.10.12, //n=(h4-h3)/(h4'-h3);
//There is close correspondence between 5.3 psia and -60F for saturated conditions.Therefore,state 3 is a superheated vapour at 5.3 psia and approximately -20F,because the problem states
//that state 3 has a 40F superheat.Interpolation in the Freon tables in Appendix 3 yields
T=-20; //Unit:F  //temperature
// p      h        s
//7.5  75.719  0.18371
//5.3  76.885  0.18985             h3=75.886 Btu/lbm
//5.0  75.990  0.19069

//At 100 psia and s=0.18985,
//  t           s      h
// 170F     0.18996  100.571
// 169.6F   0.18985  100.5          h4=100.5 Btu/lbm
// 160F     0.18726  98.884

//The weight of refrigerant is given by
// 200(tons)/(h3-h1) = (200*5)/(75.886-h1)
//In the saturated tables,h1 is
//    p        h 
// 101.86   26.832
// 100psia  26.542
// 98.87    26.365

//m=mass flow/min
h1=26.542; //enthalpy //Unit:Btu/lbm
n=0.8; //Efficiency
h4=100.5; //enthalpy //Unit:Btu/lbm
h3=75.886; //enthalpy //Unit:Btu/lbm
m=(200*5)/(75.886-h1); //mass
h4dashminush3=(h4-h3)/n; 
//Total work of compression=m*(h4minush3)
J=778; //J=Conversion factor
work=(h4dashminush3*m*J)/33000; //1 horsepower = 33,000 ft*LBf/min //Unit:hp //work
printf("%f horsepower is required to drive the compressor if it has a mechanical efficiency 100percentage\n\n",work);

printf("Solution for (b)\n");
//Assuming a specific heat of the water as unity,we obtain
//From part (a),
//h4'-h3=h4minush3
h4dash=h4dashminush3+h3; //Unit:Btu/lbm
mdot=(m*(h4dash-h1))/(70-60); //water enters at 60F and leaves at 70F //the required capacity in lbm/min
printf("%f lbm/min of cooling water i.e. %f gal/min is the required capacity of cooling water to pump",mdot,mdot/8.3);

//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 6


clear;
clc;


//Given:
//Function for enthalpy:
H = 400*x1 + 600*x2 + x1*x2*(40*x1+20*x2)

//To determine enthalpies for pure component and at infinite dlution

//(a).
//The given subpart is theoretical and does not involve numerical computation

//(b).
//Using eq. 7.27 (Page no. 264)
//H = H1_bar as x1 = 1
H1 = 420-60+40;
//Using eq. 7.28 (Page no. 264)
//H = H2_bar as x2 = 1
H2 = 600;
mprintf('\n (b).');
mprintf('\n Pure state enthalpies are:');
mprintf('\n H1 = %i J/mol',H1);
mprintf('\n H2 = %i J/mol',H2);

//(c).
//H1_inf = H1_bar as x1 = 0, so from eq. 7.27
H1_inf = 420;
//H2_inf = H2_bar as x2 = 0. so from eq 7.28
H2_inf = 640;
mprintf('\n\n (c).');
mprintf('\n At infinite dilution:');
mprintf('\n H1 = %i J/mol',H1_inf);
mprintf('\n H2 = %i J/mol',H2_inf);

//end
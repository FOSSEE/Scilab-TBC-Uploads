clear;
clc;

// Illustration 7.2
// Page: 433

printf('Illustration 7.2 -  Page: 433\n\n');

// solution
//*****Data*****//
//  'b'-solvent   'f'-feed   'r'-raffinate   'e'-extract   'c'-one of the   // component in  feed
F = 50; // [feed rate, kg/h]
S = 50; // [solvent rate, kg/h]
xcf = 0.6;
xbf = 0;
ycs = 0;
ybs = 1.0;
// The equilibrium data for this system can be obtained from Table 7.1 and    // Figure 7.6
// Plot streams F (xcF = 0.6, xBF = 0.0) and S (yes = 0.0, yBs = 1.0). After  // locating streams F and S, M is on the line FS; its exact location is found // by calculating xcm from

xcm = (F*xcf+S*ycs)/(F+S);

// From figure 7.8
xcr = 0.189;
xbr = 0.013;
yce = 0.334;
ybe = 0.648;
M = F+S; // [kg/h]
// From equation 7.8 
E = M*(xcm-xcr)/(yce-xcr); // [kg/h]
R = M-E; // [kg/h]
printf("The extract and raffinate flow rates are %f kg/h and %f kg/h respectively.\n\n",E,R);
printf("The compositions when one equilibrium stage is used for the separation is %f and %f in raffinate phase for component b and c respectively and %f and %f in extract phase for component b and c respectively.\n\n",xcr,xbr,yce,ybe);
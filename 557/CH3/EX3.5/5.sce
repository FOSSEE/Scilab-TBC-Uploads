clc;funcprot(0);
//Example 3.5

//Initializing the variables
B = 6; // Width of pontoon
L = 12;     //Length of pontoon
D = 1.5;             //Draught of pontoon
Dmax = 2;                 //Maximum permissible draught
rhoW = 1000;     //Density of fresh water
rhoS = 1025;     //Density of sea water
g = 9.81;      //Acceleration due to gravity

//Calculations
function[W]=Weight(D)
    W = rhoW*g*B*L*D;
endfunction

W = Weight(D); // Weight of pontoon in fresh water = weight of water displaced
Ds = W/(rhoS*g*B*L); //Draught in sea water
L = Weight(Dmax) - Weight(D); // maximum load that can be supported

disp(L/1000,"Load (kN) :",Ds,"Draught in sea (m):",W/1000,"Weight of pontoon (kN): ");
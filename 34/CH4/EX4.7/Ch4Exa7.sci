
//Part (a) 
Me= 9.1*(10^(-31)); //mass of electron, kg
m= 207*Me; //mass of muon, kg
Mp= 1836*Me; //mass of proton, kg
Mreduced= (m*Mp)/(m+Mp); //reduced mass, kg
Ao= 5.29*(10^(-11)); //Bohr's orbit for n=1, m
r1= Ao; //expected orbit for atom, m
r2= (Me/Mreduced)*r1; //reduced radius of orbit, m

disp(r2,"Radius of the mounic atom formed, in m, is: ")

//Result
// Radius of the mounic atom formed, in m, is:    
//    2.844D-13  
 
//Part (b)
E=-13.6; // energy for elctron in n=1, eV
Ereduced= (Mreduced/Me)*E; //energy for eectron in mounic atom, eV
Ereduced= Ereduced/(10^3);//converting to keV
disp(Ereduced,"Ionisation energy for the muonic atom, in keV, is: ")
 
//Result
// Ionisation energy for the muonic atom, in keV, is:    
//  - 2.5299595  
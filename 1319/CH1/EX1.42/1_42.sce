//Determine the magnetic flux for a toriod

clc;
clear;

//Arc length of different materials
lni=0.3; // nickel iron alloy
lss=0.2;//Silicon Steel
lcs=0.1;//Cast steel

//Field intensities
Hni=10; // Ni alloy
Hss=77;// Si Steel
Hcs=270; // Cast steel

con=6*(10^-4); // Gives Constant reluctances

deff('x=rel(y,z)','x=(y*z)/con'); // Fucntion to find out Reluctance

//Reluctances
Rni=rel(Hni,lni); // Note that the textbook has a wrong value calculated for the nickel alloy reluctance
Rss=rel(Hss,lss);
Rcs=rel(Hcs,lcs);

mmf=35; // Applied mmf

phi=mmf/(Rni+Rss+Rcs); // Magnetic flux produced

printf('The approximate magnetic flux produced = %g Wb\n',phi)

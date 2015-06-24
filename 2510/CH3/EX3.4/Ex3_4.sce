//Variable Declaration:
Q1 = 20.0                   //Mass (lb) (part 1)
MH = 1.008                  //Molecular weight of H (lb/lbmol)
MO = 15.999                 //Molecular weight of O (lb/lbmol)
Q2 = 454                    //Gram in pound (part 2)
Q3 = 6.023*10**23           //Avogadro nuber (part 3)
 
//Calculations:
Mol = 2*MH+MO               //Molecular weight of water (lb/lbmol)
A1 = Q1/Mol                 //Pound.moles of water (lbmol)
A2 = Q1*Q2/Mol              //Gram.moles of water (gmol)
A3 = A2*Q3                  //Molecules of water (molecules)
 
//Results:
disp("1. Pound.moles of water is:")
disp(A1)
disp("lbmol water")

disp("2. Gram.moles of water is:")
disp(A2)
disp("gmol water")

disp("3. Molecules of water is:")
disp(A3/10**26)
disp(" x 10**26 molecules")

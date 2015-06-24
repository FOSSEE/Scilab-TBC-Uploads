// Scilab code Ex15.3: Pg 561 (2005)
clc; clear;
// Data for Reaction 1
R1 = cell(4,3);  // Declare a 4X3 cell
R1(1,1).entries = 'mu';
R1(2,1).entries = 'e-';
R1(3,1).entries = 'nue_bar';
R1(4,1).entries = 'nu_mu';
R1(1,2).entries = 1;    // Muon number for mu
R1(2,2).entries = 0;    // Muon number for e-
R1(3,2).entries = 0;    // Muon number for nue_bar
R1(4,2).entries = 1;    // Muon number for nu_mu
R1(1,3).entries = 0;    // Lepton number for mu
R1(2,3).entries = 1;    // Lepton number for e-
R1(3,3).entries = -1;    // Lepton number for nue_bar
R1(4,3).entries = 0;    // Lepton number for nu_mu
// Data for Reaction 2
R2 = cell(4,3);  // Declare a 4X3 cell
R2(1,1).entries = 'Pi+';
R2(2,1).entries = 'mu+';
R2(3,1).entries = 'nu_mu';
R2(4,1).entries = 'nu_e';
R2(1,2).entries = 0;    // Muon number for Pi+
R2(2,2).entries = -1;    // Muon number for mu+
R2(3,2).entries = 1;    // Muon number for nu_mu
R2(4,2).entries = 0;    // Muon number for nu_e
R2(1,3).entries = 0;    // Lepton number for Pi+
R2(2,3).entries = 0;    // Lepton number for mu+
R2(3,3).entries = 0;    // Lepton number for nu_mu
R2(4,3).entries = 1;    // Lepton number for nu_e
// Check lepton number conservation for first reaction
if (R1(1,2).entries== R1(2,2).entries+R1(3,2).entries+R1(4,2).entries) & (R1(1,3).entries == R1(2,3).entries+R1(3,3).entries+R1(4,3).entries) then
    printf("\nThe reaction %s --> %s + %s + %s can occur (Both L_mu and L_e are conserved)", R1(1,1).entries, R1(2,1).entries, R1(3,1).entries, R1(4,1).entries);
else
    printf("\nThe reaction %s + %s --> %s + %s + %s + %s cannot occur (L_mu and L_e are not conserved)", R1(1,1).entries, R1(2,1).entries, R1(3,1).entries, R1(4,1).entries);
end
// Check lepton number conservation for second reaction
if (R2(1,2).entries== R2(2,2).entries+R2(3,2).entries+R2(4,2).entries) & (R2(1,3).entries == R2(2,3).entries+R2(3,3).entries+R2(4,3).entries) then
    printf("\nThe reaction %s --> %s + %s + %s can occur (Both L_mu and L_e are conserved)", R2(1,1).entries, R2(2,1).entries, R2(3,1).entries, R2(4,1).entries);
else
    printf("\nThe reaction %s --> %s + %s + %s cannot occur (L_mu is conserved but L_e is not conserved)", R2(1,1).entries, R2(2,1).entries, R2(3,1).entries, R2(4,1).entries);
end

// Result
// The reaction mu --> e- + nue_bar + nu_mu can occur (Both L_mu and L_e are conserved)
// The reaction Pi+ --> mu+ + nu_mu + nu_e cannot occur (L_mu is conserved but L_e is not conserved0 

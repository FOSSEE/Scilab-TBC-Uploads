// Scilab code Ex8.14 Page:268 (2006)
clc; clear;
C = cell(4,4);
// Enter compound names
C(1,1).entries = 'LaTiO3';
C(2,1).entries = 'LaCrO3';
C(3,1).entries = 'LaFeO3';
C(4,1).entries = 'LaCoO3';
// Enter total energy difference w.r.t. ground state for Paramagnetics, mRyd
C(1,2).entries = 0.014;
C(2,2).entries = 158.3;
C(3,2).entries = 20.69;
C(4,2).entries = 0.000;
// Enter total energy difference w.r.t. ground state for Ferromagnetics, mRyd
C(1,3).entries = 0.034;
C(2,3).entries = 13.99;
C(3,3).entries = 0.006;
C(4,3).entries = 0.010;
// Enter total energy difference w.r.t. ground state for Antiferromagnetics, mRyd
C(1,4).entries = 0.000;
C(2,4).entries = 0.000;
C(3,4).entries = 0.000;
C(4,4).entries = 0.003;
printf("\n______________________________________________________________");
printf("\nSolid     Total energy difference (mRyd) (w.r.t. ground state)");
printf("\n          ____________________________________________________");
printf("\n            Paramagnetic    Ferromagnetic   Antiferromagnetic ");
printf("\n______________________________________________________________");
for i = 1:1:4
    printf("\n%s      %10.3f      %10.3f      %10.3f", C(i,1).entries, C(i,2).entries, C(i,3).entries, C(i,4).entries);
end
printf("\n______________________________________________________________");
printf("\nAll the solids given above crystallize in the antiferromagnetic state except that of LaCoO3.");

// Result 
// ______________________________________________________________
// Solid     Total energy difference (mRyd) (w.r.t. ground state)
//           ____________________________________________________
//             Paramagnetic    Ferromagnetic   Antiferromagnetic 
// ______________________________________________________________
// LaTiO3           0.014           0.034           0.000
// LaCrO3         158.300          13.990           0.000
// LaFeO3          20.690           0.006           0.000
// LaCoO3           0.000           0.010           0.003
// ______________________________________________________________ 
// All the solids given above crystallize in the antiferromagnetic state except that of LaCoO3. 

// Scilab code Ex8.13 Page:264 (2006)
clc; clear;
C = cell(3,4);
// Enter compound names
C(1,1).entries = 'LaCrO3';
C(2,1).entries = 'LaMnO3';
C(3,1).entries = 'LaCoO3';
// Enter Magnetic moments from Hunds rule
C(1,2).entries = 3.0;
C(2,2).entries = 4.0;
C(3,2).entries = 5.0;
// Enter Magnetic moments from Band theory
C(1,3).entries = 2.82;
C(2,3).entries = 3.74;
C(3,3).entries = 4.16;
// Enter Magnetic moments from the Experiment
C(1,4).entries = 2.80;
C(2,4).entries = 3.90;
C(3,4).entries = 4.60;
printf("\n____________________________________________________");
printf("\nCompound  Magnetic moment per formula unit (in BM)  ");
printf("\n          __________________________________________");
printf("\n          Hunds Rule      Band Theory     Experiment");
printf("\n____________________________________________________");
for i = 1:1:3
    printf("\n%s      %3.2f             %4.2f           %4.2f", C(i,1).entries, C(i,2).entries, C(i,3).entries, C(i,4).entries);
end
printf("\n____________________________________________________");

// Result 
// ____________________________________________________
// Compound  Magnetic moment per formula unit (in BM)  
//           __________________________________________
//           Hunds Rule      Band Theory     Experiment
// ____________________________________________________
// LaCrO3      3.00             2.82           2.80
// LaMnO3      4.00             3.74           3.90
// LaCoO3      5.00             4.16           4.60
// ____________________________________________________ 

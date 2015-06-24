// Scilab code Ex17.3 :Pg:889 (2011)
clc;clear;
A = 1;  // For simplicity assume mass number to be unity
nucleus = cell(4,3);
nucleus(1,1).entries = 'He';
nucleus(1,2).entries = 2;
nucleus(1,3).entries = 6;
nucleus(2,1).entries = 'Be';
nucleus(2,2).entries = 4;
nucleus(2,3).entries = 6;
nucleus(3,1).entries = 'Li';
nucleus(3,2).entries = 3;
nucleus(3,3).entries = 6;
a_c = 0.7053;   // Asymmetry energy constant, MeV
a_a = 23.702;   // Coulomb energy constant, MeV
Z = A/(2+a_c/(2*a_a)*A^(2/3));
for i = 1:1:3
    if abs(nucleus(i,2).entries/nucleus(i,3).entries - Z) < 0.005 then
        printf("\n%s(%d,%d) is more stable than other two nuclei", nucleus(i,1).entries, nucleus(i,2).entries, nucleus(i,3).entries);
    end
end

// Result
// Li(3,6) is more stable than other two nuclei 

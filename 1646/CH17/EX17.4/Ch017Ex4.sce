// Scilab code Ex17.4 : Pg:890 (2011)
clc;clear;
nucleus = cell(4,3);
// For Li nuclides
nucleus(1,1).entries = 'Li';
nucleus(1,2).entries = 3;
nucleus(1,3).entries = 7;
nucleus(2,1).entries = 'Li';
nucleus(2,2).entries = 3;
nucleus(2,3).entries = 8;
// For Be nuclides
nucleus(3,1).entries = 'Be';
nucleus(3,2).entries = 4;
nucleus(3,3).entries = 9;
nucleus(4,1).entries = 'Be';
nucleus(4,2).entries = 4;
nucleus(4,3).entries = 10;
a_c = 0.7053;   // Asymmetry energy constant, MeV
a_a = 23.702;   // Coulomb energy constant, MeV
for i = 1:1:4
    Z = nucleus(i,3).entries/(2+a_c/(2*a_a)*nucleus(i,3).entries^(2/3));
    if abs(Z-int(Z)) < 0.5 then
        printf("\n%s(%d,%d) is more stable", nucleus(i,1).entries, nucleus(i,2).entries, nucleus(i,3).entries);
    end
end

// Result
// Li(3,7) is more stable
// Be(4,9) is more stable 

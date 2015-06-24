clear ;
clc;
// Example 5.1
printf('Example 5.1\n\n');
//Page no.109
// Solution

P = 60 ;//[Gpa]

//(a)
p_atm = (P*(10^6))/101.3 ;//[atm]
printf('(a) Pressure in atmospheres is %.2e atm\n',p_atm);

//(b)
p_s = (P*(10^6)*14.696)/101.3 ;//[psia]
printf(' (b) Pressure in psia is %.2e psia\n',p_s);

// (c)
p_in = (P*(10^6)*29.92)/101.3 ;//[inches of Hg]
printf(' (c) Pressure in inches of Hg is %.2e in. Hg\n',p_in);

// (d)
p_mm = (P*(10^6)*760)/101.3 ;//[mm of Hg]
printf(' (d) Pressure in mm of Hg is %.2e mm Hg\n',p_mm);
// Scilab code Exa 3.3.1 : Finding particles in the  given reactions : page no. 131 (2011)
// Declare three cells (for three reactions)
R1 = cell(4,3);
R2 = cell(4,3);
R3 = cell(3,3);

// Enter data for first cell (Reaction)
R1(1,1).entries = "Pb";
R1(1,2).entries = 82;
R1(1,3).entries = 211;
R1(2,1).entries = 'Bi';
R1(2,2).entries = 83;
R1(2,3).entries = 211;
R1(3,1).entries = 'Tl';
R1(3,2).entries = 81;
R1(3,3).entries = 207;
R1(4,1).entries = 'Pb';
R1(4,2).entries = 82;
R1(4,3).entries = 207;

// Enter data for second cell (Reaction)
R2(1,1).entries = "U";
R2(1,2).entries = 92;
R2(1,3).entries = 238;
R2(2,1).entries = 'Th';
R2(2,2).entries = 90;
R2(2,3).entries = 234;
R2(3,1).entries = 'Pa';
R2(3,2).entries = 91;
R2(3,3).entries = 234;
R2(4,1).entries = 'U';
R2(4,2).entries = 92;
R2(4,3).entries = 234;

// Enter data for third cell (Reaction)
R3(1,1).entries = "Bi";
R3(1,2).entries = 83;
R3(1,3).entries = 211;
R3(2,1).entries = 'Pa';
R3(2,2).entries = 84;
R3(2,3).entries = 211;
R3(3,1).entries = 'Pb';
R3(3,2).entries = 82;
R3(3,3).entries = 207;

// Declare a function returning the type of particle emitted
function particle = identify_particle(d_Z, d_A)
      if d_Z == 2 & d_A == 4 then 
       particle = "Alpha";
   elseif d_Z == -1 & d_A == 0 then
       particle = "Beta minus";
   elseif d_Z == 1 & d_A == 0 then
       particle = "Beta plus";
      end
endfunction

// Display emitted particles for first reaction
printf("\n\n\nReaction-I:");
for i = 1:1:3
        dZ = R1(i,2).entries-R1(i+1,2).entries;
        dA = R1(i,3).entries-R1(i+1,3).entries;
        p = identify_particle(dZ,dA);
        printf("\n%s(%d) - (%s) --> %s(%d)", R1(i,1).entries, R1(i,2).entries, p, R1(i+1,1).entries, R1(i+1,2).entries); 
end

// Display emitted particles for second reaction
printf("\n\n\nReaction-II:");
for i = 1:1:3
        dZ = R2(i,2).entries-R2(i+1,2).entries;
        dA = R2(i,3).entries-R2(i+1,3).entries;
        p = identify_particle(dZ,dA);
        printf("\n%s(%d) - (%s) --> %s(%d)", R2(i,1).entries, R2(i,2).entries, p, R2(i+1,1).entries, R2(i+1,2).entries); 
end

// Display emitted particles for third reaction
printf("\n\n\nReaction-III:");
for i = 1:1:2
        dZ = R3(i,2).entries-R3(i+1,2).entries;
        dA = R3(i,3).entries-R3(i+1,3).entries;
        p = identify_particle(dZ,dA);
        printf("\n%s(%d) - (%s) --> %s(%d)", R3(i,1).entries, R3(i,2).entries, p, R3(i+1,1).entries, R3(i+1,2).entries); 
end

// Result
//
// Reaction-I:
// Pb(82) - (Beta minus) --> Bi(83)
// Bi(83) - (Alpha) --> Tl(81)
// Tl(81) - (Beta minus) --> Pb(82)


// Reaction-II:
// U(92) - (Alpha) --> Th(90)
// Th(90) - (Beta minus) --> Pa(91)
// Pa(91) - (Beta minus) --> U(92)


// Reaction-III:
// Bi(83) - (Beta minus) --> Pa(84)
// Pa(84) - (Alpha) --> Pb(82)

// Finding atomic No. and mass No. of daughter nuclei in the given reactions : Page No. 133(2011)
// Declare  cell (for given reaction)
R1 = cell(5,4);
// Enter data for cell (Reaction-I)
R1(1,1).entries = "A";
R1(1,2).entries = 90;
R1(1,3).entries = 238;
R1(1,4).entries = "Alpha";
R1(2,1).entries = 'B';
R1(2,4).entries = "Beta minus";
R1(3,1).entries = 'C';
R1(3,4).entries = "Alpha";
R1(4,1).entries = 'D';
R1(4,4).entries = "Beta minus";
R1(5,1).entries = 'E';  

// Declare a function returning the type of particle emitted
function [Z, A] = daughter_nucleus(particle_emitted)
      if particle_emitted == "Alpha" then 
          Z = 2, A = 4;
   elseif particle_emitted == "Beta minus" then 
          Z = -1, A = 0; 
   elseif particle_emitted == "Beta plus" then 
          Z = 1, A = 0;
      end
endfunction

// Display emitted particles for first reaction
printf("\n\n\nReaction-I:");
for i = 1:1:4
        [Z, A] = daughter_nucleus(R1(i,4).entries);
        R1(i+1,2).entries = R1(i,2).entries-Z;
        R1(i+1,3).entries = R1(i,3).entries-A; 
        printf("\n%s(%d,%d) - (%s) --> %s(%d,%d)", R1(i,1).entries, R1(i,2).entries, R1(i,3).entries, R1(i,4).entries, R1(i+1,1).entries, R1(i+1,2).entries, R1(i+1,3).entries)
        ; 
end
// Result 
// 
// Reaction-I:
// A(90,238) - (Alpha) --> B(88,234)
// B(88,234) - (Beta minus) --> C(89,234)
// (89,234) - (Alpha) --> D(87,230)
// D(87,230) - (Beta minus) --> E(88,230) 


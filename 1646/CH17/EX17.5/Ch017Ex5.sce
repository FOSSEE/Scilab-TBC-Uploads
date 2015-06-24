// Scilab code Ex17.5 : Pg:891 (2011)
clc;clear;
c = 1;  // For simplicity assume speed of light to be unity, unit
nucleus = cell(4,4);
// For first reaction
nucleus(1,1).entries = 'N';
nucleus(1,2).entries = 7;
nucleus(1,3).entries = 14;
nucleus(1,4).entries = 14.00753;
nucleus(2,1).entries = 'He';
nucleus(2,2).entries = 2;
nucleus(2,3).entries = 4;
nucleus(2,4).entries = 4.00206;
nucleus(3,1).entries = 'O';
nucleus(3,2).entries = 8;
nucleus(3,3).entries = 17;
nucleus(3,4).entries = 17.00450;
nucleus(4,1).entries = 'H';
nucleus(4,2).entries = 1;
nucleus(4,3).entries = 1;
nucleus(4,4).entries = 1.00814;
Q = (nucleus(1,4).entries + nucleus(2,4).entries)*c^2 - (nucleus(3,4).entries + nucleus(4,4).entries)*c^2;
if Q < 0 then
    T_state = "endothermic";
   elseif Q > 0
    T_state = "exothermic";  
end
printf("\nThe reaction");
printf("\n%s(%d,%d) + %s(%d,%d) --> %s(%d,%d) + %s(%d,%d) is %s", nucleus(1,1).entries, nucleus(1,2).entries, nucleus(1,3).entries, nucleus(2,1).entries, nucleus(2,2).entries, nucleus(2,3).entries, nucleus(3,1).entries, nucleus(3,2).entries, nucleus(3,3).entries, nucleus(4,1).entries, nucleus(4,2).entries, nucleus(4,3).entries, T_state);
// For second reaction
nucleus(1,1).entries = 'Li';
nucleus(1,2).entries = 3;
nucleus(1,3).entries = 7;
nucleus(1,4).entries = 7.01822;
nucleus(2,1).entries = 'H';
nucleus(2,2).entries = 1;
nucleus(2,3).entries = 1;
nucleus(2,4).entries = 1.00814;
nucleus(3,1).entries = 'He';
nucleus(3,2).entries = 2;
nucleus(3,3).entries = 4;
nucleus(3,4).entries = 4.00206;
Q = (nucleus(1,4).entries + nucleus(2,4).entries)*c^2 - (nucleus(3,4).entries + nucleus(3,4).entries)*c^2;
if Q < 0 then
    T_state = "endothermic";
   elseif Q > 0
    T_state = "exothermic";  
end
printf("\nThe reaction");
printf("\n%s(%d,%d) + %s(%d,%d) --> %s(%d,%d) + %s(%d,%d) is %s", nucleus(1,1).entries, nucleus(1,2).entries, nucleus(1,3).entries, nucleus(2,1).entries, nucleus(2,2).entries, nucleus(2,3).entries, nucleus(3,1).entries, nucleus(3,2).entries, nucleus(3,3).entries, nucleus(4,1).entries, nucleus(4,2).entries, nucleus(4,3).entries, T_state);

// Result
//  
// The reaction
// N(7,14) + He(2,4) --> O(8,17) + H(1,1) is endothermic
// The reaction
// Li(3,7) + H(1,1) --> He(2,4) + H(1,1) is exothermic 

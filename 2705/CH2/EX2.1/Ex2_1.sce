clear;
clc;
disp('Example 2.1');



//  Given values
Q = 2500; // Heat transferred into the system, [kJ]
W = 1400; //  Work transferred from the system,  [kJ]
 
//   solution

//  since process carried out on a closed system, so using equation [4]
del_E = Q-W; //  Change in total energy, [kJ]

mprintf('\n The Change in total energy is, del_E =  %f  kJ\n',del_E);

if(del_E&gt;0)
    disp('Since del_E is positive, so there is an increase in total enery')
else
    disp('Since del_E is negative, so there is an decrease in total enery')
end

// There is mistake in the book's results unit

//  End

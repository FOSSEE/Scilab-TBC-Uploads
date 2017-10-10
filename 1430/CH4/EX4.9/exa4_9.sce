// Example 4.9
// Mesh Analysis with a Supernode
// From figure 4.31, Applying KVL in Supermesh we get,
disp("6*(i_1-5)+10*i_1+3*(i_1+4)-20=0")
// Rearrangements gives
disp("(6+10+3)*i_1=6*5-(3*4)+20")
i_1=linsolve((6+10+3),-((6*5)-(3*4)+20))// Linear equation solver
disp(i_1,"Current through the Upper Portion of the Supermesh(in Amps)=")

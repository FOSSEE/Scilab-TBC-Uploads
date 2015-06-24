clear;
clc;
disp('Example 2.2');


//  Given values
del_E = 3500; // Increase in total energy of the system, [kJ]
W = -4200; // Work transfer into the system, [kJ]

//  solution
//  since process carried out on a closed system, so using equation [3]
Q = del_E+W;// [kJ]

mprintf('\n The Heat transfer is, Q =  %f kJ \n',Q);

if(Q&gt;0)
    disp('Since Q&gt;0, so heat is transferred into the system')
else
    disp('Since Q&lt;0, so heat is transferred from the system')
end

//  End

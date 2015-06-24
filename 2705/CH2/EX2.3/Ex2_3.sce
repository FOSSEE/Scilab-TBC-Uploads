clear;
clc;
disp('Example 2.3');



//  Given values
Q = -150; // Heat transferred out of the system, [kJ/kg]
del_u = -400; // Internal energy decreased ,[kJ/kg]

//  solution
//  using equation [3],the non flow energy equation
//  Q=del_u+W
W = Q-del_u; //  [kJ/kg]
mprintf('\n The Work done is, W =  %f kJ/kg \n',W);

if(W&gt;0)
      disp('Since W&gt;0, so Work done by the engine per kilogram of working substance')
else
   disp('Since &lt;0, so Work done on the engine per kilogram of working substance')
end

//  End

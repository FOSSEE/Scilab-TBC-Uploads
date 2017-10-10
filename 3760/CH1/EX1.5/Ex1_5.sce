clc;
v1=240; // high voltage side voltage
v2=120; // low voltage side voltage
f1=50; // frequency in Hz
disp('v1 is directly proportional to product of frequency and maximum flux. considering q1 be maximum flux for v1 and q2 be maximum flux for v11 then Q=q2/q1 can be calculated as follow ')
disp('case a')
v11=240; // new supply voltage  
f2=40; // new supply frequency
Q=(v11*f1)/(v1*f2);
v22=(v2*f2*Q)/f1; 
printf('secondary voltage for case a is %f v\n',v22);
disp('case b')
v11=120; // new supply voltage  
f2=25; // new supply frequency
Q=(v11*f1)/(v1*f2);
v22=(v2*f2*Q)/f1; 
printf('secondary voltage for case a is %f v\n',v22);
disp('case c')
v11=120; // new supply voltage  
f2=50; // new supply frequency
Q=(v11*f1)/(v1*f2);
v22=(v2*f2*Q)/f1; 
printf('secondary voltage for case a is %f v\n',v22);
disp('case d')
v11=480; // new supply voltage  
f2=50; // new supply frequency
Q=(v11*f1)/(v1*f2);
v22=(v2*f2*Q)/f1; 
printf('secondary voltage for case a is %f v\n',v22);
disp('case e')
v11=240; // new supply voltage  
f2=0; // new supply frequency
disp('since frequency is zero. Source is a DC source so a very  high current will flow in primary side which will damage the transformer and the secondary induced emf is zero ')








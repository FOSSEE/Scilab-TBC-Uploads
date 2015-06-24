//conversion to canonical POS//
//example 31.b//
clc
//clears the command window//
clear
//clears//
//conversion to canonical POS//
disp('given Y=AB+A''B''+AC+A''C''')
disp('we use the complement of the previous example')
disp('the entries will be at 3,4 i.e. 011,100 positions')
disp('Y=A''BC+AB''C''')
disp('Y=(A''BC.AB''C'')''')
//de morgan's theorem//
disp('Y=(A+B''+C'').(A''+B+C)')
disp('the required POS expression')

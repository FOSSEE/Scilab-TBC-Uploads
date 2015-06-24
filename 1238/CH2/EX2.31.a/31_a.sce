//conversion to canonical SOP//
//example 31.a//
clc
//clears the command window//
clear
//clears//
//conversion to canonical SOP//
disp('given Y=AB+A''B''+AC+A''C''')
disp('since x+x''=1,we get')
disp('Y=AB(C+C'')+A''B''(C+C'')+AC(B+B'')+A''C''(B+B'')')
disp('Y=ABC+ABC''+A''B''C+A''B''C''+ACB''+ACB''+A''C''B+A''C''B''')
disp('since ABC and A''B''C'' appear twice,we write them once')
disp('Y=ABC+ABC''+A''B''C+A''B''C''+AB''C+A''BC''')
disp('the required SOP expression')
disp('Y=111+110+001+000+101+010')
disp('hence the required entries will be at the positions 0,1,2,5,6,7')
disp('f=summation(0,1,2,5,6,7)')

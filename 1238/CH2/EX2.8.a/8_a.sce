//simplification of boolean expression//
//example 8.a//
clc
//clears the command window//
clear
//clears//
disp('given Y=AB+AB''C(B''C''+C)+A''C''')
disp('Y=AB+AB''B''CC''+AB''CC+A''C''');//ON MULTIPLICATION//
disp('Y=AB+AB''C+A''+C''');//CC''=0//
disp('Y=C''+AB+(A+A'')(A''+B''C)')
disp('Y=C''+AB+1.(A''+B''C)')
disp('Y=A''+A.B+C''+B''C')
disp('Y=(A''+A).(A''+B)+(C''+B'').(C''+C)')
disp('Y=1.(A''+B)+(C''+B'').1')
disp('the simplified expression is:')
disp('Y=A''+B+C''+B''');//required simplified expression//

//Chapter-15, Example 15.13, Page 503
//=============================================================================
clc
clear
//CALCULATIONS
//for (a)
disp('given=> Y=(A+AB+AB''C)')
disp('Y=A+AB''C')//by (A+AB=A)------>step 1
disp('A(A+B''C)')//by distributive law--------->step 2
disp('A(1.(1+B''C))')//by talking A as common--------->step 3
disp('A.1=A')//by 1+B''C=1--------->step 4
//for (b)
disp('given=> Y=(A''+B)C+ABC')
disp('A''C+BC+ABC')//by distributive law-------->step 1
disp('A''C+BC(1+A)')//by taking BC as common--------->step 2
disp('A''C+BC')//by rule 2 --------->step 3
disp('C(A''+B)')//taking C as common term-------->step 4
//for (c)
disp('given=> Y=(AB''BCD+AB''CDE+AC'')')
disp('AB''CDE+AC''')//applying rules 8 and 7 to first and second terms,respectively -------->step 1
disp('A(B''CDE+C'')')//taking A as common term--------->step 2
disp('A(B''DE+C'')')//by applying B''CDE+C'=B'DE+C'--------->step 3
//=================================END OF PROGRAM=======================================================================================================

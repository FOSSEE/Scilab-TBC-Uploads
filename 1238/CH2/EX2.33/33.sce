//finding SOP and POS//
//example 33//
clc
//clears the command window//
clear
//clears//
disp('given f=B''C')
disp('f=(B''+AA''+CC'')(C+AA''+BB'')')
disp('f=((B''+A)(B''+A'')+CC'')((C+A)(C+A'')+BB'')')
disp('f=[C+(B''+A)(B''+A'')][C''+(B''+A)(B''+A'')][B+(C+A)(C+A'')][B''+(C+A)+(C+A'')]');//using distributive property//
disp('f=(A+B''+C)(A''+B''+C)(A+B''+C'')(A''+B''+C'')(A+B+C)(A''+B+C)');//using distributive property and retaining repeated factors only once//
disp('f=(010)(110)(011)(111)(000)(100)')
disp('required POS form:')
disp('f=product(0,2,3,4,6,7)')
//finding SOP//
disp('f=(A+A'').B''C')
disp('f=AB''C+A''BC')
disp('f=101+001')
disp('required SOP form:')
disp('f=summation(5,1)')

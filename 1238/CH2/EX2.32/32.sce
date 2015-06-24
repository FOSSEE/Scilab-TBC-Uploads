//finding SOP and POS//
//example 32//
clc
//clears the command window//
clear
//clears//
disp('given f=A''.(B+C'')')
disp('f=(A''+BB''+CC'')(B+C''+AA'')')
disp('f=[(A''+B)(A''+B'')+CC''][(B+C''+A)(B+C''+A'')]')
disp('f=[C+(A''+B)(A''+B'')][C''+(A''+B)(A''+B)][(A+B+C'')(A''+B+C'')')
disp('f=(C+A''+B)(C+A''+B'')(C''+A''+B)(C''+A''+B'')(A+B+C'')(A''+B+C)')
disp('f=(A''+B+C)(A''+B''+C'')(A''+B+C'')(A''+B''+C'')(A+B+C'')')
disp('f=(100)(110)(101)(111)(001)')
disp('required POS form is:')
disp('f=product(1,4,5,6,7)');//required POS form//
disp('f=A''(B+C'')')
disp('f=A''B+A''C'')')
disp('f=A''B(C+C'')+A''C''(B+B'')')
disp('f=A''BC+A''BC''+A''BC''+A''B''C''')
disp('f=011+010+000')
disp('required SOP form is:')
disp('f=summation(0,2,3)');//required SOP form// 
 

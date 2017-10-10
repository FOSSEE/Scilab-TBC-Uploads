clc
//Example 16.5
// Number of coils in helical spring

//------------------------------------------------------------------------------
//Given Data:

d=1.6e-3
C=6
Ss=345e6
k=1800
G=80e9

res5= mopen(TMPDIR+'5_number_of_coils_helical_spring.txt','wt')

mfprintf(res5,'C= D/d\n')
D= C*d
mfprintf(res5,'D=%0.1f mm\n\n',D* 10^3)

K= ((4*C -1)/(4*C -1)) + (0.615/C)
mfprintf(res5,'Wahl factor\n')
mfprintf(res5,'K= ((4*C -1)/(4*C -1)) + (0.615/C)\n\t=%0.2f\n\n',K)

n=(d*G)/(k*8* C^3)
mfprintf(res5,'F/y = dG/8*n*C^3\n')
mfprintf(res5,'n=%0.2f turns\n\n',n)

F= (Ss*%pi* d^3)/(K*8*D)
mfprintf(res5,'F= %0.2f N\n\n',F)

mfprintf(res5,"The deflection should be limited to %0.2f mm\n",F/k * 10^3)

mclose(res5);
editor(TMPDIR+'5_number_of_coils_helical_spring.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------
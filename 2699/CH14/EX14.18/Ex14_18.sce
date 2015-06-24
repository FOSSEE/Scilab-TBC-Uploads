//example 14.18 PG-14.40
clc
clear
printf("   Refer to the Figure-14.50 shown\n\n")
printf("    The Boolean expression for the output Y is :\n\n")
printf("    Y = (A''+B'')''.BC\n\n")
printf("    Y = ((AB)'')''.BC     ....Since A''+B''=(AB)'' and (A'')''= A\n")
printf("                            DeMorgan''s Therem\n\n")
printf("    Y = A.B.B.C     ........Since A.A=A\n\n")
printf("    Y = ABC\n\n")
printf("    Truth Table\n")
printf("    A     B     C     Y")
a=zeros(1,4)
b=[0 0 1 0;0 1 0 0;0 1 1 0;1 0 0 0;1 0 1 0;1 1 0 0] 
c=ones(1,4)
d=[a;b;c]
disp(d)

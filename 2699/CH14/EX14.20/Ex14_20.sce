//example 14.20 PG-14.41
clc
clear
printf("   Refer to the Figure-14.52 shown\n\n")
printf("    From the Figure we can see that\n\n")
printf("    Y = ((A+B)''.(B+C'')'')''\n\n")
printf("    Y = (A+B)''''+(B+C'')''''    .....Since (A.B)''=A''+B''\n")
printf("                                 DeMorgan''s Therem \n")
printf("                                 where A=A+B and B=B+C''\n\n")
printf("    Y = A+B+B+C''       ..........Since (A'')''= A\n\n")
printf("    Y = A+B+C''         ..........Since A+A= A\n\n")
printf("    Truth Table\n")
printf("    A     B     C     Y")
a=[0 0 0 1;0 0 1 0;0 1 0 1;0 1 1 1;1 0 0 1;1 0 1 1;1 1 0 1] 
b=ones(1,4)
c=[a;b]
disp(c)

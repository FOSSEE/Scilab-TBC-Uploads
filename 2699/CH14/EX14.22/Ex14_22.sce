//example 14.22 PG-14.41
clc
clear
printf("\n   a) Given=> \n\n")
printf("   ((A+B'').(A''+B))'' = (A+B'')''+(A''+B)''     ....Since (AB)''= A''+B''\n")
printf("                                              DeMorgan''s Therem\n\n")
printf("                    = A''.B''''+A''''.B''       ....Since A''+B''=(AB)''\n")
printf("                                              DeMorgan''s Therem\n\n")
printf("                    = A''.B + A.B''      .......Since (A'')''=A\n")
printf("  Therefore \n")
printf("   ((A+B'').(A''+B))'' = A''.B + A.B''")

printf("\n\n  b) Given=> \n\n")
printf("   (((A.B)'')C)''D)'' = ((AB)'')C)''''+D''       ....Since (AB)''= A''+B''\n")
printf("                                              DeMorgan''s Therem\n\n")
printf("                   = (AB)''.C + D''         ....Since (A'')''=A\n\n")
printf("                   = (A''+B'')C + D''         ....Since (AB)''=A''+ B''\n")
printf("                                              DeMorgan''s Therem\n\n")
printf(" Therefore \n")
printf("   (((A.B)'')C)''D)'' = (A''+B'')C + D'' ")

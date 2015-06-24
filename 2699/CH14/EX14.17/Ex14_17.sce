//example 14.17 PG-14.40
clc
clear
printf("\n\n Given=> \n\n")
printf("  AB+(AC)''+AB''C(AB+C) = ")
printf("AB+ (AC)''+AAB''BC+AB''CC   ......Distributive property\n\n")
printf("                      = AB+ (AC)''+ AB''CC  .............Since A.A''=0\n\n")
printf("                      = AB+ (AC)''+ AB''C     ...........Since A.A=A\n\n     ")
printf("                 = AB+ A''+ C''+ AB''C     ..........Since(AB)''=A''+B''\n\n")
printf("                      = A''+ B+C''+ AB''C     ............Since A+A''B=A+B\n\n")
printf("                      = A''+ AB''C + B+C''     ...........Commutative property")
printf("\n\n                      = A''+ B''C + B+C''     ............Since A+A''B=A+B")
printf("\n                                                       Where B=B''C\n\n")
printf("                      = A''+ B+C''+ B''C       ...........Commutative property")
printf("\n\n                      = A''+ B+C''+B''        ............Since A+A''B=A+B")
printf("\n\n                      = A''+C''+1       .................Since A+A''=1\n\n")
printf("                      = 1         .....................Since A+1=1\n\n")
printf(" Therefore \n")
printf("          AB+(AC)''+AB''C(AB+C) = 1")

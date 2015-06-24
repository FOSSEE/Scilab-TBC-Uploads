clc,clear
printf('Example 1.4\n\n')

Pole=4
Z=18 //no of armature conductors
Y_A=(Z+2)/Pole  //For progressive type wave winding,positive sign is used
Y_C=Y_A  //For wave winding

//Since Y_A=(y_b+y_f)/2, we let y_b=Y_f
y_b=Y_A/2   //say
y_f=y_b

coils=Z/2
slots=coils
commutator_segments=coils

printf('WINDING TABLE:\n   1<-    6->  11<-  16->   3<-   8\n->13<-   18->   5<-  10->  15<-   2\n-> 7<-   12->  17<-   4->   9<-  14\n->1\n                                                  ')

printf('\nAnother form of winding table:')

printf('\n      BACK CONNECTIONS                                FRONT CONNECTIONS')

printf('\n\n       1 to (1+5)  = 6                       ->        6 to (6+5) = 11')
printf('\n      11 to (11+5) =16                       ->       16 to (16+5)= 21 -18=3')
printf('\n       3 to (3+5)  = 8                       ->        8 to  (8+5)= 13')
printf('\n      13 to (13+5) =18                       ->       18 to (18+5)= 23 -18=5')
printf('\n       5 to (5+5)  =10                       ->       10 to (10+5)= 15')
printf('\n      15 to (15+5) =20 -18=2                 ->        2 to  (2+5)=  7')
printf('\n       7 to (7+5)  =12                       ->       12 to (12+5)= 17')
printf('\n      17 to (17+5) =22 -18=4                 ->        4 to  (4+5)=  9')
printf('\n       9 to (9+5)  =14                       ->       14 to (14+5)= 19 -18=1')

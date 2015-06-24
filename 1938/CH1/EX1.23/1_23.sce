clc,clear
printf('Example 1.23\n\n')

slots=13
Pole=4
conductors_per_slot=2
Z=conductors_per_slot*slots
Y_A=(Z+2)/Pole  //For progressive type wave winding
//Since Y_A=(y_b+y_f)/2, we let y_b=y_f
y_b=Y_A
y_f=y_b //because y_b=Y_A/2

segments=13 //commutator segments

printf('WINDING TABLE:\n   1<-    8->  15<-  22->   3<-   10\n->17<-   24->   5<-  12->  19<-   26\n-> 7<-   14->  21<-   2->   9<-   16\n->23<-    4->  11<-  18->  25<-    6\n->13<-   20->   1\n                                                  ')
printf('\nNote that <- indicates back connection with y_back=%.0f and -> indicates front connection with y_front=%.0f\n',y_b,y_f)

printf('\nAnother form of winding table:')

printf('\n      BACK CONNECTIONS                                FRONT CONNECTIONS')

printf('\n\n       1 to (1+7)  = 8                   ->        8 to (8+7) = 15')
printf('\n      15 to (15+7) =22                   ->       22 to (22+7)= 29 -26=3')
printf('\n       3 to (3+7)  =10                   ->       10 to (10+7)= 17')
printf('\n      17 to (17+7) =24                   ->       24 to (24+7)= 31 -26=5')
printf('\n       5 to (5+7)  =14                   ->       12 to (12+7)= 19')
printf('\n      19 to (19+7) =26                   ->       26 to (26+7)= 33 -26=7')
printf('\n       7 to (7+7)  =14                   ->       14 to (14+7)= 21')
printf('\n      21 to (21+7) =28 -26=2             ->        2 to  (2+7)=  9')
printf('\n       9 to (9+7)  =16                   ->       16 to (16+7)= 23 ')
printf('\n      23 to (23+7) =30 -26=4             ->        4 to  (4+7)= 11')
printf('\n       11to (11+7) =18                   ->       18 to (18+7)= 25')
printf('\n      25 to (25+7) =32 -26=6             ->        6 to  (6+7)= 13')
printf('\n      13 to`(13+7) =20                   ->       20 to (20+7)= 27 -26=1')

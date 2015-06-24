clc,clear
printf('Example 1.3\n\n')

Pole=4
coils=12
commutator_segments=coils
coil_sides=coils*2
Z=coil_sides  //No of conductors
pole_pitch=Z/Pole

//for Simplex lap winding
y_f=pole_pitch-1
y_b=pole_pitch+1

y_c=1  //Note that it's positive and it's progressive type of Simplex lap winding


printf('WINDING TABLE:\n\n   1<-    8->    3<-   10->    5<-   12\n-> 7<-   14->    9<-   16->   11<-   18\n->13<-   20->   15<-   22->   17<-   24\n->19<-    2->   21<-    4->   23<-    6\n-> 1\n                                                  ')
printf('\nNote that <- indicates back connection with  y_back=%.0f and -> indicates front connection with y_front=%.0f\n',y_b,y_f)
printf('\nAnother form of winding table:')
printf('\n      BACK CONNECTIONS                                FRONT CONNECTIONS')

printf('\n\n       1 to (1+7) = 8                        ->        8 to (8-5) = 3')
printf('\n       3 to (3+7) =10                        ->       10 to (10-5)= 5')
printf('\n       5 to (5+7) =12                        ->       12 to (12-5)= 7')
printf('\n       7 to (7+7) =14                        ->       14 to (14-5)= 9')
printf('\n       9 to (9+7) =16                        ->       16 to (16-5)=11')
printf('\n      11 to (11+7)=18                        ->       18 to (18-5)=13')
printf('\n      13 to (13+7)=20                        ->       20 to (20-5)=15')
printf('\n      15 to (15+7)=22                        ->       22 to (22-5)=17')
printf('\n      17 to (17+7)=24                        ->       24 to (24-5)=19')
printf('\n      19 to (19+7)=26=(26-24)=2              ->        2 to (26-5)=21')
printf('\n      21 to (21+7)=28=(28-24)=4              ->        4 to (28-5)=23')
printf('\n      23 to (23+7)=30=(30-24)=6              ->        6 to (30-5)=25  = 25-24=1')

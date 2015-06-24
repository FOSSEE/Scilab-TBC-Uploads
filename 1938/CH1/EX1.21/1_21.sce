clc,clear
printf('Example 1.21\n\n')

Pole=4 
Z=32  //no of conductors
coil_sides=Z 
segments=16
pole_pitch=Z/Pole
slots=16
slots_per_pole=slots/Pole

//for Simplex lap winding
y_b=pole_pitch+1  //back pitch
y_f=pole_pitch-1  //front pitch

y_c=1  //Commutator pitch; Note that it is positive and it is progressive type of Simplex lap winding

printf('WINDING TABLE:\n\n   1<-   10->    3<-   12->    5<-   14\n-> 7<-   16->    9<-   18->   11<-   20\n->13<-   22->   15<-   24->   17<-   26\n->19<-   28->   21<-   30->   23<-   32\n->25<-    2->   27<-    4->   29<-    6\n->31<-   8->1                                                  ')
printf('\nNote that <- indicates back connection with  y_back=%.0f and -> indicates front connection with y_front=%.0f\n',y_b,y_f)

printf('\nAnother form of winding table:')

printf('\n      BACK CONNECTIONS                                FRONT CONNECTIONS')

printf('\n\n       1 to (1+9) =10                        ->       10 to (10-7) =3')
printf('\n       3 to (3+9) =12                        ->       12 to (12-7)= 5')
printf('\n       5 to (5+9) =14                        ->       14 to (14-7)= 7')
printf('\n       7 to (7+9) =16                        ->       16 to (16-7)= 9')
printf('\n       9 to (9+9) =18                        ->       18 to (18-7)=11')
printf('\n      11 to (11+9)=20                        ->       20 to (20-7)=13')
printf('\n      13 to (13+9)=22                        ->       22 to (22-7)=15')
printf('\n      15 to (15+9)=24                        ->       24 to (24-7)=17')
printf('\n      17 to (17+9)=26                        ->       26 to (26-7)=19')
printf('\n      19 to (19+9)=28                        ->       28 to (28-7)=21')
printf('\n      21 to (21+9)=30                        ->       30 to (30-7)=23')
printf('\n      23 to (23+9)=32                        ->       32 to (32-7)=25')
printf('\n      25 to (25+9)=34=(34-32)=2              ->        2 to (34-7)=27')
printf('\n      27 to (27+9)=36=(36-32)=4              ->        4 to (36-7)=29')
printf('\n      29 to (29+9)=38=(38-32)=6              ->        6 to (38-7)=31')
printf('\n      31 to (31+9)=40=(40-32)=4              ->        8 to (40-7)=33 -32= 1')

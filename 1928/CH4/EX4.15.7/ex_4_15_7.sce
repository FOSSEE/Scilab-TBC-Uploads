//Chapter-4,Example4_15_7,pg 4-30

l=20                                    //length of room

b=15                                    //bredth of room

h=5                                     //height of room

V=l*b*h                                 //volume of room

S=2*(l*b+b*h+h*l)                       //surface area of hall

T=3.5                                   //Reverberation time

a=(0.161*V)/(T*S)                       //using Sabine's formula

printf("1) average absorption coefficient =")

disp(a)

avg=a*S                                 //average total absorption

printf("2) average total absorption =")

disp(avg)

printf("m^2.S")

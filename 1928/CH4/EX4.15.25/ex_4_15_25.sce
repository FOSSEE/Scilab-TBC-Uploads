//Chapter-4,Example4_15_25,pg 4-39

l=20                                    //length of room

b=15                                    //bredth of room

h=10                                    //height of room

V=l*b*h                                 //volume of room

S=2*(l*b+b*h+h*l)                       //surface area of hall

T=3                                     //Reverberation time

a=(0.161*V)/(T*S)                       //using Sabine's formula

printf("1) average absorption coefficient =")

disp(a)

m=a*S                                   //total absorption

printf("2) total absorption of surface =")

disp(m)

printf("m^2/sec")
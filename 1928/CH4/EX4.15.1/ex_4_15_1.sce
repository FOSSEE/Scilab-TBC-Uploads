//Chapter-4,Example4_15_1,pg 4-25

l=20                                    //length of room

b=15                                    //bredth of room

h=10                                    //height of room

V=l*b*h                                 //volume of room

a=0.106                                 //absorption coefficient

S=2*(l*b+b*h+h*l)                       //surface area of hall

T=(0.161*V)/(a*S)                       //Reverberation time,using Sabine's formula

printf("Reverberation time =")

disp(T)

printf("sec")


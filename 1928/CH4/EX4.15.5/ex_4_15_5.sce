//Chapter-4,Example4_15_5,pg 4-27

l=20                                    //length of room

b=12                                    //bredth of room

h=12                                    //height of room

V=l*b*h                                 //volume of room

S=2*(l*b+b*h+h*l)                       //surface area of hall

T1=2.5                                  //Reverberation time

a=(0.161*V)/(T1*S)                      //using Sabine's formula

printf("1) average absorption coefficient =")

disp(a)

a1=0.5                                  //absorption coefficient

T2=2                                    //Reverberation time

S1=(0.161*V/(a1-a))*(1/T2-1/T1)

printf("2) carpet area required =")

disp(S1)

printf("m^2")

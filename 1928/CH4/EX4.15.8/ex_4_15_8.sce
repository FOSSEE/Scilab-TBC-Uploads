//Chapter-4,Example4_15_8,pg 4-30

l=20                                    //length of room

b=15                                    //bredth of room

h=10                                    //height of room

V=l*b*h                                 //volume of room

a=0.1                                   //absorption coefficient

S=2*(l*b+b*h+h*l)                       //surface area of hall

T1=(0.161*V)/(a*S)                      //Reverberation time,using Sabine's formula

printf("1) Reverberation time =")

disp(T1)

printf("sec")

a2=0.66                                 //absorption coefficient of curtain cloth

S2=100                                  //surface area of a curtain cloth

T2=(0.161*V)/(a*S+a2*S2*2)              //Reverberation time,using Sabine's formula

T=T1-T2                                 //change in Reverberation time

printf("2) change in Reverberation time =")

disp(T)

printf("sec")

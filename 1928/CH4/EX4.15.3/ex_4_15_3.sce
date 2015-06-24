//Chapter-4,Example4_15_3,pg 4-26

S1=220                                  //wall area

a1=0.03                                 //absorption coefficient for the wall

S2=120                                  //floor area

a2=0.8                                  //absorption coefficient for the floor

S3=120                                  //ceiling area

a3=0.06                                 //absorption coefficient for the ceiling

V=600                                   //volume of room

S=S1+S2+S3                              //total surface area

a=(a1*S1+a2*S2+a3*S3)/S                 //average sound absorption coefficient

printf("1) average sound absorption coefficient =")

disp(a)

T=(0.161*V)/(a*S)                       //Reverberation time,using Sabine's formula

printf("2) Reverberation time =")

disp(T)

printf("sec")

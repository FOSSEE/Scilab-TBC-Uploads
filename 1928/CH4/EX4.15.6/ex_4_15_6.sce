//Chapter-4,Example4_15_6,pg 4-28

Ac=10*12                                //area of carpet covering entire floor

ac=0.06                                 //absorption coefficient of carpet

aS1=Ac*ac                               //absorption due to carpet

Af=10*12                                //area of false celling

af=0.03                                 //absorption coefficient of celling

aS2=Af*af                               //absorption due to celling

As=100*1                                //area of cushioned sets

as=1                                    //absorption coefficient of cushion sets

aS3=As*as                               //absorption due to cusion sets

Aw=346*1                                //area of walls covered with absorbent

aw=0.2                                  //absorption coefficient of walls

aS4=Aw*aw                               //absorption due to walls

Ad=346*1                                //area of wooden door

ad=0.2                                  //absorption coefficient of wooden door

aS5=Ad*ad                               //absorption due to wooden door

aS=aS1+aS2+aS3+aS4                      //total absorption

ap=0.46                                 //absorption coefficient of audience/person

l=12                                    //assuming length of wall

b=10                                    //assuming breadth of wall

h=8                                     //assuming height of wall

V=l*b*h                                 //volume of hall

//case 1 :(no one inside/emptey  hall)

T1=(0.161*V)/aS                         //reverberation time

printf("     1)reverberation time of empty hall =")

disp(T1)

printf("sec")

//case 2 :(50 person inside hall)

T2=(0.161*V)/(aS+50*0.46)               //reverberation time

printf("  2)reverberation time of hall with 50 person =")

disp(T2)

printf("sec")

//case 2 :(100 person inside hall/full capacity of hall)

T3=(0.161*V)/(aS+100*0.46)              //reverberation time

printf("  3)reverberation time of hall with 100 person =")

disp(T3)

printf("sec")


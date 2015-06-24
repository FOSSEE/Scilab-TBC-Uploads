//Chapter-3,Example 3_8,Page 3-21
clc()

//Given Data:
w=98                    //Spot size in meter
d=50*10^-6              //Core diameter in meter
a=d/2                   //core radius
u1=1.47                 //R.I. of Core
u2=1.45                 //R.I.of Cladding
lam=0.85*10^-6          //Wavlength in meter
NA=sqrt(u1^2-u2^2)      //Formula to find NA

//Calculations:
V=2*%pi*a*NA/lam        //cut off parameter
N=(V^2)/2               //Number of modes

printf('Cut off parameter of Fibre is =%.4f \n \n',V)
printf(' Number of modes of Fibre is =%.0f \n',N)

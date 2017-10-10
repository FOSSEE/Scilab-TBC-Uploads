//Chapter 10:Traction Drives
//Example 6
clc;

//Variable Initialization
Ml=1000      //weight of the empty train in tonne
Mt=5000      //weight of the fully loaded train in tonne
G=15         //gradient of the track
V=30         //maximum speed of the train 
r=40         //train resistance in N/tonne
u=0.25       //co-efficient of adhesion
alpha=0.3    //acelaration in kmphps

W=100            //weight of each locomotive

//Solution
Md=W//Md=W*n
Fm=9810*u*Md
//By expanding and clubbing similar terms we get
//(G*9.81*Mt)+(9.81*W*n*G)-((r*Mt)+(r*W*n))
//(G*9.81*Mt)-(r*Mt)+(9.81*W*n*G)-(r*W*n)
Fb1=(9.81*Mt*G)-(r*Mt)          //By expanding we get 
Fb2=(9.81*W*G)-(r*W)//By expanding we get Mt*r+W*n*r
mprintf("\nFm=%d*n",Fm)
mprintf("\nFb=%d*n+%d",Fb2,Fb1)
mprintf("\nEquating Fb and Fm we get")
n=535750/(245250-10715)
if (n>2) then 
    n=3
end
mprintf("\nThe number of locomotives is n:%d",n)
Md=W*n
M=Ml+W*n
Ft=277.8*1.1*M*alpha+9.81*M*G+M*r  
Fm=9810*0.3*Md
if (Fm>Ft) then
    mprintf("\nThe train can be accelarated with %d locomotives",n)
end

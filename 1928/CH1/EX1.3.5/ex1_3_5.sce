//Chapter-1,Example1_3_5,pg 1-17

A=120                                   //atomic weight of chromium

N=6.023*10^23                           //Avogadro's number

p=5.2                                   //Density

n=2                                     //BCC structure

m=20                                    //mass

//step 1 : claculation for volume of unit cell(a^3)

a=(n*A/(N*p))

//step 2 : volume of 20 gm of the element

v=m/p

//step 3 :no of unit cell

x=v/a

printf("no of unit cell=")

disp(x)
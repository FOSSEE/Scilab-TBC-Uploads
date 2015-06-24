//Chapter-1,Example 1_14,Page 1-41
clc()

//Given Data:
n=4             //4th dark ring
m=12            //m=n+p
D4=0.4*10^-2    //Diameter of 4th ring
D12=0.7*10^-2   //Diameter of 12th ring

//Calculations:

//(Dn+p)^2-Dn^2=4*p*lam*R
//Solving, (D12^2-D4^2)/(D20^2-D4^2)
//We get above value =1/2. Hence
D20=sqrt(2*D12^2-D4^2)      //Diameter of 20th ring
printf('Diameter of 20th ring is =%.5f m \n',D20)

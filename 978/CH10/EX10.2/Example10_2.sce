//chapter-10,Example10_2,pg 295

//in absence of the guard point arrangement, two 10^10 ohm resistances in series become parallel to the 10^9 ohm resistance, making the effective unknown resistance

//case-1

Rh=10^9

Ra1=10^10

Rb1=10^10

Rue1=((Rh*2*Ra1)/(Rh+(2*Ra1)))//effective resistance

err1=((Rh-Rue1)/Rh)*100//percentage error

//case-2
    
Ra2=10^9

Rb2=10^9

Rue2=((Rh*2*Ra2)/(Rh+(2*Ra2)))//effective resistance

err2=((Rh-Rue2)/Rh)*100//percentage error

printf("percentage error case-1\n")

printf("err1=%.2f \n",err1)

printf("percentage error case-2\n")

printf("err2=%.2f ",err2)


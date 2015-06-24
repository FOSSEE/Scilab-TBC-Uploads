
//Example 2.4
//Calculate(a) hot end temprature'
//(b) temprature fradient at both the ends
//(c) the temprature at 0.15m away from the cold end.
//Given
d1=0.06       //m, one end diameter of steel rod
d2=0.12       //m,other end diameter of steel rod
l=0.2         //m length of rod
T2=30         //C, temp. at end 2
Q=50          //W, heat loss
k=15           //W/m c, thermal conductivity of rod

//NUMERIC PART
//T=265.8-(7.07/(0.06-0.15*x))........(a)
//(a)
x1=0
//from eq. (a)
T1=265.8-(7.07/(0.06-0.15*x1))
printf("The hot  end temp. is %f C\n",T1)
//(b)  from eq. (i)
C=50                 //integration constant
//from eq. (i)
D1=-C/(%pi*d1^2*k)   //D=dT/dx, temprature gradient
printf("The temprature gradient at hot end is %f C/m\n",D1)
//similarly
D2=-1179             //at x= 0.2m
printf("The temprature gradient at cold end is %f C/m\n",D2)

//(c)
x2=0.15              //m, given,
x3=l-x2              //m, section away from the cold end
//from eq. (a)
T2=265.8-(7.07/(0.06-0.15*x3))
printf("the temprature at 0.15m away from the cold end is %f C",T2)

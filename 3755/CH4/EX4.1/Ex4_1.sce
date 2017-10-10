clear
//
//
//

//Variable declaration    
T1=773;     //temperature(K)
T2=1273;    //temperature(K)
n=1*10^-10;       //fraction of vacancy sites

//Calculations
X=(T1*log(n)/T2);

x=exp(X);          //fraction of vacancy sites at 1000 C

//Result
printf("\n fraction of vacancy sites at 1000 C is %0.4f *10^-7",x*10^7)
printf("\n answer varies due to rounding off errors")

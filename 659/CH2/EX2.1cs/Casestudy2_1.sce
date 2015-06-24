//    Case Study:-Chapter 2 Page No.-47
//   1.Calculation of Average of numbers

N=10;sum1=0;count=0;     //Initialization of variables
printf(" Enter ten numbers");
while(count<N)
     number=scanf("%f");  //Reading number(using scanf() function)
     sum1=sum1+number;
     count=count+1;
 end
 average=sum1/N;         //Avarage is calculated
printf(" N = %d Sum1 = %f",N,sum1 );
printf(" Average = %f",average );

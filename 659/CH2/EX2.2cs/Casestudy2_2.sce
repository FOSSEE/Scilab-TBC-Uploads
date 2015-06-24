//        Case Study:-Chapter 2   Page no.-48
//  2.Solution of temprature in Farenheit and Celsius
F_LOW=0;
F_MAX=250;
STEP=25;
fahrenheit=F_LOW;      //Initialization
printf("Fahrenheit      Celsius\n\n");
while(fahrenheit < = F_MAX)
    celsius=(fahrenheit-32.0)/1.8;     //conversion from Farenheit to Celsius
    printf("%6.2f          %7.2f\n",fahrenheit,celsius);
    fahrenheit=fahrenheit+STEP;
 end
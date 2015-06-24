//variable initialization
x=(1/3):.01:(2/3);
x0=1/3;
x1=2/3;

//calculation
P=2*integrate('(sin(%pi*x))^2','x',x0,x1);

printf("The required probability = %.2f",P);

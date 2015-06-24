            //Example 6.6
//Use of if-else statement

//status, pay, pastdue,accountno, balance are not declared or predefined in the program
//so these values are assumed
status= input("Enter Status: ","string");
printf("Enter Pay:");
pay= scanf("%f");
if(status=='S') then
    tax=0.20*pay;
else
    tax=0.14*pay;
end

pastdue=1200.00;
accountno=9743456789;
if ( pastdue > 0) then
    printf("account number %d is overdue", accountno);
    credit=0;
else
    credit=1000.0;
end

x=4;
balance=5678;
if ( x<=3) then
    y=3*x^2;
else
    y=2*(x-3)^2;
end
printf("%f\n", balance);

circle = 1;     //or circle =0 for false case
if (circle) then
    printf("Enter radius of circle");
    radius=scanf("%f");
    area= 3.14159*radius*radius;
    printf("Area of circle = %f", area);
else
    printf("Enter length and width seperated by space:");
    [Length, width] = scanf("%f %f");
    area =Length * width;
    printf("Area of rectangle = %f", area);
end

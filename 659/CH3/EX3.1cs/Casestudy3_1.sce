//      Case Study:-Chapter 3,Page No:76
//       1.Salesman's Salary


BASE_SALARY=1500.00;   //Minimum base salary
BONUS_RATE=200.00;     //Bonus for every computer sold
COMMISSION=0.02;       //Commission on total monthly sales
printf("Input number sold and price\n[Enter in single line separated by space]");
[quantity,price] = scanf("%d %f");   //Input quantity and price
//Computation for bonus,commission and gross_salary of a salesman 
bonus = BONUS_RATE*quantity;
commission = COMMISSION*quantity*price;
gross_salary =BASE_SALARY + bonus + commission; 
printf("Bonus              = %6.2f\n",   bonus); 
printf("Commission         = %6.2f\n",   commission); 
printf("Gross  salary      = %6.2f\n",   gross_salary); 

//            Example 1.5
// SAMPLE PROGRAM 3: INTEREST CALCULATION

PRINCIPAL=5000.00;
PERIOD=10;
//Assignment Statements
amount=PRINCIPAL;
inrate=0.11;
year=0;
//Computation using while loop
while(year<=PERIOD)
    printf("%2d %8.2f\n",year,amount);
    value=amount+inrate*amount;
    year=year+1;
    amount=value;
end //End of while loop



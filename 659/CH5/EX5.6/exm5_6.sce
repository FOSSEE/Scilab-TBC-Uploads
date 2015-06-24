//                     Example 5.6
// A program to  process loan applications and to sanction loans.

MAXLOAN=50000;
disp("Enter the values of previous two loans");
loan1=int32(input("Enter first loan:"));
loan2=int32(input("Enter second loan:"));
loan3=int32(input("Enter the values of new loan:"));
sum23=loan2+loan3;
//Calculate the sanction loan
if(loan1>0),
    sancloan=0;
 elseif(sum23>MAXLOAN),
     sancloan=MAXLOAN-loan2;
 else
     sancloan=loan3;
end
//Print the results
printf("Previous loans pending:%d %d\n",loan1,loan2);
printf("Loan requested =%d\n",loan3);
printf("Loan sanctioned =%d\n",sancloan);

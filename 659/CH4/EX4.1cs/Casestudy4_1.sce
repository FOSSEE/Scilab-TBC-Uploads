//               Case Study:-Chapter 4 ,Page No:106
//               1.Inventory Report

ITEMS=4;
i=1;
printf("[Enter in single line seperated be spaces]\n");
while(i <= 4)
    printf("Enter code,quantity, and rate:");
     [code(i),quantity(i),rate(i)]=scanf("%s %d %f");
     i=i+1;
end
printf("INVENTORY REPORT\n");
printf("----------------------------------------------\n");
printf("Code        Quantity     Rate      Value\n");
printf("----------------------------------------------\n");
total_value=0;
i=1;
while(i<=ITEMS)
    value=quantity(i)*rate(i);
    printf("%6s %10d %10.2f    %e\n",code(i),quantity(i),rate(i),value);
    total_value= total_value+value;
    i=i+1;
end    
    printf("----------------------------------------------\n");
    printf("              Total Value = %e\n",total_value);
    printf("----------------------------------------------\n");

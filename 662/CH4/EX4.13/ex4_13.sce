                    //Example 4.13
clc
printf("Enter value for Item, partno, cost :  ");
printf("\n [Enter values in single line seperated by spaces])  ");

[a,Item, partno,cost]=mscanf("%11s %*d %f");;
//due to uncertainity of values assigned, omitted use of printf here
disp( " = cost",cost," = Partno ",partno, " = Item ",Item);

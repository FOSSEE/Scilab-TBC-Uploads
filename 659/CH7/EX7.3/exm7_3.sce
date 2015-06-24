//                 Example:7.3
//Write a program using two dimensional array to compute print following 
//information from the table of data discussed:
//(a)Total value of sales by each girl.
//(b)Total value of each item sold 
//(c)Grand total of all sales of all items by all girls.

MAXGIRLS=4;MAXITEMS=3;
frequency=zeros(1,5);
disp("Input data");
//Reading values and computing girl_total
disp("Enter values,one at a time");

for i=1:MAXGIRLS
    girl_total(i)=0;
    for j=1:MAXITEMS
    value(i,j)=scanf("%d");
    girl_total(i)=girl_total(i)+value(i,j);
    end
end
//Computing item total
for j=1:MAXITEMS
    item_total(j)=0;
    for i=1:MAXGIRLS
    item_total(j)=item_total(j)+value(i,j);
    end
end
//Computing grand total
grand_total=0;
for i=1:MAXGIRLS
    grand_total=grand_total+girl_total(i);
end
//Printing of result
disp("GIRLS TOTALS");
for i=1:MAXGIRLS
    printf("Salesgirl(%d)=%d\n",i,girl_total(i));
end

disp("ITEM TOTALS");
for j=1:MAXITEMS
    printf("Item(%d)=%d\n",j,item_total(j));
end
printf("Grand Total=%d\n",grand_total);

                //Example 4_14
    clc
printf("\n [Enter values in single line])  ");
printf("\nEnter character values for c1, c2 and c3 :  ");
[a,c1, c2, c3]=mscanf("%c%c%c");
printf("c1 = %c, c2 = %c, c3 = %c ", c1, c2, c3);

//if scanf written as scanf("%c %1s %1s", &c1, &c2, &c3)
printf("\nEnter character values for c1, c2 and c3 :  ");
[a,c1, c2, c3]=mscanf("%c%1s%1s");
printf("c1 = %c, c2 = %c, c3 = %c ", c1, c2, c3);

//if scanf written as scanf("%c %c %c", &c1, &c2, &c3)
printf("\nEnter character values for c1, c2 and c3 :  ");
[a,c1, c2, c3]=mscanf("%c %c %c");            //if spaces are included between %cs.
printf("c1 = %c, c2 = %c, c3 = %c ", c1, c2, c3);

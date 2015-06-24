             //Programming Example 6.23
//Switch statement illustration
printf("Enter any one of these(r R w W b B): ");
choice = scanf("%c");
select (choice)                //here select is equivalent to switch statement
    case 'r' then
         printf("RED");
    case 'R' then
        printf("RED");
    case 'w' then
        printf("WHITE");
    case 'W' then
        printf("WHITE");
    case 'b' then
        printf("BLUE");
    case 'B' then
        printf("BLUE");
end

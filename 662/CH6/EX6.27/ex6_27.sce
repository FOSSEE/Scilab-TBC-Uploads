             //Programming Example 6.27
//Variation of Switch statement illustration
printf("Enter R,or W or B (any case): ")
choice = convstr(scanf("%c"), 'u');
select (choice)                //here select is equivalent to switch statement
    case 'R' then
        printf("RED");
    case 'W' then
        printf("WHITE");
    case 'B' then
        printf("BLUE");
    else
        printf("ERROR");
end

             //Programming Example 6.24
//Variation of Switch statement illustration
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

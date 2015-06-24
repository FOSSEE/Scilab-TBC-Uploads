            //Example 10.9
//A user defined implementation of comparison of two strings

function[ans] = strcompare(string1, string2)
    length1 = length(string1);
    length2 = length(string2);
    if length1 < length2 then
        Length = length1;
    else
        Length = length2;
    end
    for i = 1 : Length
        if (ascii(part(string1,i)) < ascii((part (string2,i)) )) then
            ans = -1;
            return ans;
        elseif (ascii(part(string1,i)) > ascii((part (string2,i))) ) then
            ans = 1;
            return ans;
        end
    end
    return 0;
endfunction

function[] = main()
    str1 = input("Enter first string : ","string");
    str2 = input("Enter second string : ","string");
    status = strcompare(str1, str2);
    if status == -1 then
        printf("First String is lesser than second string\n");
    elseif status == 1 then
        printf("First String is greater than second string\n");
    else
        printf("Both strings are equal\n");
    end
endfunction

//calling main()
funcprot(0);
main();
        //Example 10.14
//Program to search for a substring in a given string

function[] = main()
    text = input("Enter the main string: ","string");
    substr = input("Enter the sub string to be searched: ","string");
    text_len= length(text);
    sub_len = length(substr);

    for i = 1:(text_len-sub_len)
        for j = 1:sub_len
            if ascii(part(text,(i+j))) == ascii(part(substr,j)) then
                continue;
            else
                break;
            end
        end
        if j == sub_len then
            printf("The substring is present from subscript %d onwards\n", i);
        end
    end
endfunction

//calling main()
funcprot(0);
main();
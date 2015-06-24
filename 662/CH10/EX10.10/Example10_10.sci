//Example 10.10
//left as well as right conctenation of two strings

function[dst] = leftconcat(dst, src)
    dst=src+dst;
    return dst;
endfunction


function[dst] = rightconcat(dst, src)
    dst=dst+src;
    return dst;
endfunction

function[] = main()
    printf("Enter first string: ");
    str1 = read(%io(1), 1, 1, '(a)');
    printf("Enter second string to be concatenated: ");
    str2 = read(%io(1), 1, 1, '(a)');
    printf("Press 1 for left concatenation, 2 for right concatenation :");
    choice = scanf("%d");
    if (choice == 1) then
        str1 = leftconcat(str1, str2);
        printf("The first string after left concatenation becomes %s\n", str1);
    elseif choice == 2
        str1 = rightconcat(str1, str2);
        printf("The first string after right concatenation becomes %s\n", str1);
    else
        printf("Invalid choice\n")
    end
endfunction

//calling main()
funcprot(0);
main();
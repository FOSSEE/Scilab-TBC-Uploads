        //Example 10.8
//User defined functions for string length and sring copy

function[count] = strlength(str)
    count = 0;
    count=length(str);
    return count;
endfunction

function[dst] = strcopy(dst, src)
    Length = strlength(src);
    for i = 1 : Length
        dst(i) = part(src,i);
    end
endfunction

function[] = main()
    [str2]=' ';
    printf("Enter one string: ");
    str1 = read(%io(1), 1, 1, '(a)');
    len1 = strlength(str1);
    printf("The length of the string is %d \n", len1);
    
    str2 = strcopy(str2,str1);
    printf("First String is %s and copied string is ", str1); 
    for i =1 : len1
        printf("%c",str2(i));
    end
endfunction

//calling main()
funcprot(0);
main();
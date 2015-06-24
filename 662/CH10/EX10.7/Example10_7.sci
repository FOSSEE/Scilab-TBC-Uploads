            //Example 10.7
//to demonstrate the use  of predefined string reated function

function[] = main()
    printf("Enter one string:");
    str1 = read(%io(1), 1, 1, '(a)');   //read is used instead of using gets
    len1= length(str1);
    printf("The length of string is %d \n", len1);
    str2 = str1;
    printf("First string is %s and copied string is %s \n", str1, str2);
    
    printf("Enter thr string to be compared with first string: ");
    str3 = read(%io(1), 1, 1, '(a)');
    if (strcmp(str1, str3) == 0) then
        printf("Both strings are equal\n");
    elseif (strcmp(str1, str3) < 0) then
        printf("First string is lesser than the second\n");
    else
        printf("First string is greater than the second\n");
    end
    
    printf("Enter thr string to be concatenated at the right of first string: ");
    tempstr1 = read(%io(1), 1, 1, '(a)');
    str1= strcat([str1, tempstr1]);
    printf("The concatenation string is %s \n", str1);
endfunction

//calling main()
funcprot(0);
main();
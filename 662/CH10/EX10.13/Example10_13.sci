            //Example 10.13
        //Program to convert lowercase alphabets to uppercase in a given text

function[] = main()
    text = input("Enter  line of text: ","string");
    len= length(text);
    for i = 1 : len
        txt(i) = convstr(part(text,i), 'u');
    end
    printf("The text after converting lowercase alphabets to uppercase is \n");
    for i = 1 : len
        printf("%c",txt(i));
    end
endfunction

//calling main()
funcprot(0);
main();
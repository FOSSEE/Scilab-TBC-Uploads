            //Example 10.11
//Program to count total number of vowels in agiven text

function[] = main()
    vowelcount = 0;
    text = input("Enter  line of text: ","string");
    len= length(text);
    for i = 1 : len
        txt(i) = part(text,i);
    end
    for i = 1:len
        select txt(i)
            case 'a' then
                vowelcount = vowelcount+1;
            case 'A' then
                vowelcount = vowelcount+1;
            case 'e' then
                vowelcount = vowelcount+1;
            case 'E' then
                vowelcount = vowelcount+1;
            case 'i' then
                vowelcount = vowelcount+1;
            case 'I' then
                vowelcount = vowelcount+1;
            case 'o' then
                vowelcount = vowelcount+1;
            case 'O' then
                vowelcount = vowelcount+1;
            case 'u' then
                vowelcount = vowelcount+1;
            case 'U' then
                vowelcount = vowelcount+1;
        end
    end
    printf("Total number of vowels in given text are %d\n", vowelcount);
endfunction

//calling main()
funcprot(0);
main();
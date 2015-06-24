                //Programming Example 9.2
            //Lowercase to Upercase converson using 1 dimensional array
function[]  = main() 
    //read in the line
    line =input("Enter a line: ","string");
    SIZE= length(line);
    for count = 1:1:SIZE
        letter(count) = part(line, count);
    end
    //display the line in upper case
    for count = 1:1:SIZE
        a=convstr(letter(count),'u');
        printf("%c",a);
    end
endfunction

//calling main()
funcprot(0);
main();
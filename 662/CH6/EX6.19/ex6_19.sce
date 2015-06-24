                //Programming Example 6.19
//Converting several lines of text to uppercase
//continue the conversion until the first character in a line is an asterisk(*)

printf("\nStart entering text:\n")
letter=read(%io(1),1,1,'(a)');
while part(letter,1) ~= '*'

//read in a line of text
    //string is not stored as array of characters in scilab as in case of c
    //hence considering the string read at line 6, in variable letter for first time
    count=length(letter);
    tag=count;
    //display the line of text
    for count =1 :1: tag
        printf(  "%c", (convstr(part(letter,count), 'u')) );
    end
    letter=read(%io(1),1,1,'(a)');
end
printf("Good Bye");
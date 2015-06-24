                //Programming Example 6.20
            //Encoding a string of characters

//read in the entire string
line=input("Enter a ine of text  : ","string");        //scanf in scilab do not accept space 
//input serves the work of oth printf and scanf here and exits as  new line character (enter) is encountered.
//encode each individual character and display it
for count= 1:1: length(line)        //length(line)represent end of string i.e. index of last charcter of string entered
    //also the starting index of string is 1
    l=part(line,count);                        //Here part(line,count) represent line[count]
    if (((ascii(l) >= ascii('0')) & (ascii(l) < ascii('9'))) | ((ascii(l) >= ascii('A')) & (ascii(l) < ascii('Z'))) | ((ascii(l) >= ascii('a')) & (ascii(l) < ascii('z')))) then
            printf("%c",ascii(ascii(l)+1) );
    elseif (l == '9' ) then printf('0');
        elseif (l == 'Z') then printf('A');
            elseif (l == 'z') then printf('a');
                else printf('.');
    end
end
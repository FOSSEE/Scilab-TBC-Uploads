//                 Example 4.3       
// A program that reads a character from the keyboard and then print in reverse
//case ,that is,if input is in upper case,the output will be lower case and vice-versa 
disp("Enter an alphabet");
alphabet=scanf("%c");                  //Reading character
if((ascii(alphabet))>=97) then
    disp(convstr(alphabet,"u"));      //Reverse and display
else
    disp(convstr(alphabet,"l"));      //Reverse and display
end

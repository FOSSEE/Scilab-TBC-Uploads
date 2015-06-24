//                Example 4.2       
// The program requests the user to enter a character and display a message on
// the screen telling the user whether the character is an alphabet or digit,
// or any other special character.

disp("Press any key");
character=scanf("%c");                      //Reading character
if (isletter(character)) then               //Test for letter
    disp("The character is a letter");
    elseif (isdigit(character)) then        //Test for digit
            disp("The character is a digit");
        else
            disp("The character is not alphanumeric");
 end
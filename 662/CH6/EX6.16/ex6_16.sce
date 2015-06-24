                //Programming Example 6.16
//Lowercase to uppercase conversion with for loop

count=0;
//read in lowercase text
letter=input("Enter a string: ","string");  //string is not stored as array of characters in scilab as in case of c
tag=length(letter);
//display the uppercase text
for count =1 :1: tag
    printf(  "%c", (convstr(part(letter,count), 'u')) );
end
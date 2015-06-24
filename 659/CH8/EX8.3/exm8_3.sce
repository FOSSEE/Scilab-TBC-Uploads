//                  Example 8.3
//Write a program to copy one string into another and count the number
//of characters copied.

//Read data using scanf function
disp("Enter a string:")
[string2]=scanf("%s");     //Read string
l=length(string2);         //Compute the length
string1=' ';               //string1 is empty
for i=1:l
    string1=string1+ part(string2,i);
end
//Printing the results
printf(" %s\n",string1);
printf(" Number of characters = %d\n",l);


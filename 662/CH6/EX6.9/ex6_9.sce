                //Example 6.9
//Convert a line of lowercase text to uppercase
count=1;
//read in lowercase text
letter=input("Enter a string: ","string");  //ditectly input string as string is not stored as array of characters
tag=length(letter);
//display the uppercase text
count=1;
while( count <= tag )
    printf(  "%c", (convstr(part(letter,count), 'u')) );
    count=count+1;
end
//                           Example 8.9
//Write a program that would sort a list of names in alphabetical order.

ITEMS=5;
//Reading the list
printf("Enter names of %d items\n",ITEMS);
i=1;
while(i<=ITEMS)
    string1(i)=scanf("%s");
    i=i+1;
end
//Sorting begins
for i=1:ITEMS                 //Outer loop begins
    for j=2:ITEMS-i+1         //Inner loop begins
        k=strcmp(string1(j-1),string1(j))
        if(k>0) then 
            //Compute length and Exchange of contents
            l1=length(string1(j-1));
            l2=length(string1(j));
            dummy=strncpy(string1(j-1),l1);
            string1(j-1)=strncpy(string1(j),l2);
            l3=length(dummy);
            string1(j)=strncpy(dummy,l3);
        end
    end  //Inner loop ends
end  //Outer loop ends
//Sorting completed
disp("Alphabetical list");
for i=1:ITEMS
    printf("%s\n",string1(i));
end

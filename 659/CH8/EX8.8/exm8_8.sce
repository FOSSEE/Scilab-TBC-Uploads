//                           Example 8.8
//s1,s2 and s3 are three string variables. Write a program to read two string-
//constants in to s1 and s2 and compare whether they are equal or not,join-
//them together. Then copy contents of s1 to variable s3. At the end program-
// should print all three variables and their lengths 


//Read data
printf("Enter two string constants\n");
[s1 s2]=scanf("%s %s");

//Comparing two strings
x=strcmp(s1,s2);
if x~=0 then
    printf("String are not equal\n");
    //Concatinate two strings s1 and s2
    s1=strcat([s1,s2]);
else
     printf("String are equal\n");
end

l1=length(s1);
//Coping s1 to s3
s3=strncpy(s1,l1);
//finding length of strings
l2=length(s2);
l3=length(s3);
//Output
printf("s1 =  %s\t length = %d characters\n",s1,l1);
printf("s2=  %s\t length = %d characters\n",s2,l2);
printf("s3=  %s\t length = %d characters\n",s3,l3);


//                    Example 8.7
//The name of employees of an organization are stored in three arrays namely-
//first_name,second_name and last_name.
//Write a program to concatinate the three parts into one string called name.


//Store the name in the three arrays
first_name=['VISWANATH'];
second_name=['PRATAP'];
last_name=['SINGH'];

//Concatinate three parts into one
name=[first_name second_name last_name];
// Print the result
for i=1:3
    printf("%s ",name(i));
end
//Statement below can also be used to print the result
//disp(name);

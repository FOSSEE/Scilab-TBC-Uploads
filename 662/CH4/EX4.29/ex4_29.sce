                //Example 4.29
//use of flags with string output
line=input("Enter a string(upto 12 characters): ","string");
printf(":%15s %15.5s %.5s:\n\n", line, line, line);
printf(":%-15s %-15.5s %-.5s:\n\n", line, line, line);
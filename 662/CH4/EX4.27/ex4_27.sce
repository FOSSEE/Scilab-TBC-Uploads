            //Example 4.27
//use of flags with integers and floating point numbers
i = 123;
x = 12.0;
y = -3.3;
printf(": %6d %7.0f %10.1e: \n\n", i, x, y);
printf(": %-6d %-7.0f %-10.1e: \n\n", i, x, y);
printf(": %+6d %+7.0f %+10.1e: \n\n", i, x, y);
printf(": %-+6d %-+7.0f %-+10.1e: \n\n", i, x, y);
printf(":%7.0f %#7.0f %7g %#7g:", x, x, y, y);
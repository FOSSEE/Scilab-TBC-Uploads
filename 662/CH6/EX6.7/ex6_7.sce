                //Example 6.7
                clc
//Illustration of nested if- else statement
printf("Enter time(hh.mm) in 24 hour format:");
time = scanf("%f")
if ((time >= 0) & (time < 12)) then printf("Good Morning");
    elseif ((time >= 12) & (time < 18)) then printf("Good Afternoon");
       elseif ((time >= 18) & (time < 24 )) then printf("Good Evening");
            else printf(" Time is out of range");
        end

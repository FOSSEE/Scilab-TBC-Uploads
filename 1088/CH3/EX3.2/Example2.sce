clear()
dt=getdate()
//clc()

disp("Example 2 : Write a code sequence to display the current date and time")
printf("\n**********************************************************\n")
disp("Answer :  ")
printf("\n")
printf("The current date is %s and the current time is %d : %d : %d \nThe day is ",date(),dt(7),dt(8),dt(9))
select dt(5) 
    case 1 then
    printf("Sunday")
    case 2 then
    printf("Monday")
    case 3 then
    printf("Tuesday")
    case 4 then
    printf("Wednesday")
    case 5 then
    printf("Thursday")
    case 6 then
    printf("Friday")
    case 7 then
    printf("Saturday")
end
printf(".")
printf("\n**********************************************************\n")


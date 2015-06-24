//                      Example:7.5
//A survey to know the popularity of four cars(Ambassador,fait,Dolphin and 
//Maruti) was conducted in four cities(Bombay,Calcutta,Delhi and Madras).
//Each person surveyed was asked to give his city and type of car he was using.
//Write a program to prouce a table showing the popularity of various cars in 
//four cities.

frequency=zeros(5,5);
printf("For each person,enter the city code[B,C,D,M]\n");
printf("followed by the car code[1,2,3,4].\n");
printf("Enter the letter X 0(zero)to indicate end.\n");

//Tabulation begins
for i=1:99
    [n,city,car]=mscanf("%c %d");
    if(city=='X') then
        break;
    end
    select city
     case 'B' then frequency(1,car)=frequency(1,car)+1;
     case 'C' then frequency(2,car)=frequency(2,car)+1;
     case 'D' then frequency(3,car)=frequency(3,car)+1;
     case 'M' then frequency(4,car)=frequency(4,car)+1;
    end

end

//Tabulation completed and Printing begins
disp("            POPULATORY TABLE");
printf("______________________________________________\n");
printf("City      Ambasseador  fait  Dolphin  Maruti\n");
printf("______________________________________________\n");

for i=1:4
    select i
    case 1 then printf(" Bombay  ");
    case 2 then printf(" Calcutta");
    case 3 then printf(" Delhi   ");
    case 4 then printf(" Madras  ");
    end
    for j=1:4
    printf("%8d",frequency(i,j));
    end
    printf("\n");
end
printf("______________________________________________");
//              Printing ends
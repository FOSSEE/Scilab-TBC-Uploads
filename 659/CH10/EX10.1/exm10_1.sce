//                Example 10.1
//Define a structure type,struct personal that would contain person name,-
// date of joining and salary. Write a program to read this information from
// keyboard and print same on the screen.

funcprot(0);
function [ ]=struc(n,d,m,y,s)
    //Defining structure members
    personal=struct('name',n,'day',d,'month',m,'year',y,'salary',s);
    person=personal;
   //Accessing structure members
printf("   %s %d %s %d %.2f",person.name,person.day,person.month,person.year,person.salary);
endfunction
disp("Input values[Name day month year and salary]");
//Reading data
[name,day,month,year,salary]=scanf("%s %d %s %d %f");
//Calling function struc()
struc(name,day,month,year,salary);
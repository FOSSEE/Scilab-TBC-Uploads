//                Example 10.2
// Write a program to illustrate the comparison of structure variables.

function []=class()
    //Defining structures
    student1=struct('number',111,'name','Rao','marks',72.50);
    student2=struct('number',222,'name','Raddy','marks',67.00);
    student3=struct('number',[],'name',[],'marks',[]);
    student3=student2;
    if(student3==student2) ,   //Logical operation on structures
        disp("Student2 and student 3 are same");
        printf(" %d %s %f",student3.number,student3.name,student3.marks);
    else
        disp("Student2 and student 3 are not same");
    end
endfunction
//calling function class
class()
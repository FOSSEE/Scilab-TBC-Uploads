//Solved Example 6
//To Raise The salary of an employee
function[employee1]=raise(employee,n)//employee is the list of employees
  for i=1:n
    if(employee(i)(1).year<=2000)
      employee(i)(2)=employee(i)(2)*1.1;
    else
      employee(i)(2)=employee(i)(2)*1.05;
    end
  end
  employee1=employee;
  disp("After Raising");
  for i=1:n
    printf("Employee no %d\n",i);
    disp(employee(i)(1));
    disp(employee(i)(2));
  end
  
endfunction
//Calling Routine:
datehired=struct('year',1993,'month',12);
employee1=list(datehired,14000);
datehired=struct('year',1998,'month',12);
employee2=list(datehired,17000);
datehired=struct('year',2003,'month',12);
employee3=list(datehired,25000);
datehired=struct('year',2002,'month',12);
employee4=list(datehired,35000);
datehired=struct('year',2006,'month',12);
employee5=list(datehired,13000);
employee=list(employee1,employee2,employee3,employee4,employee5);
employee=raise(employee,5)

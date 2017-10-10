//Eg-1.10
//pg-24

clear
clc

a=input("enter any number");
printf('Enter \n1 to find square root \n2 to find logarithm \n3 to find the exponential\n\n')
choice = input("Enter your choice");

select choice,
  case 1 then r=sqrt(a);disp(r),
  case 2 then r=log(a);disp(r),
  case 3 then r=exp(a);disp(r),
      else printf('Invalid Choice\n')
end
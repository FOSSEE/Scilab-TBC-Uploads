clc;
clear;
n=input("Enter the no of input variables :");
//Input the true minimal vertices 
v=input("Enter the no of minimal true vertices :");
disp("vertex will be in the form of 101 if it is 3 variable");
for i=1:v
    printf('Vertex %3d :',i)
    s(i)=input(" ");
end
tv=input("enter a vertex which you want find whether true vertex or not");
//determines whether the vertex is a true or not by comparing it with the true minimal vertices
for i=1:v
    if(tv>s(i))
        disp("It is a true vertex");
        break;
     else
         if(i==v)
             disp("It is not a true vertex since it is not > than any of the min vertices");
         end
    end
end
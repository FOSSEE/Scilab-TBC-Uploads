clc
//Chapter3
//Ex_12
//Given
x=9
for n1=1:x
  for n2=1:x
   for n3=1:x
y=n1^2+n2^2+n3^2 //let y=N^2=n1^2+n2^2+n3^2
if (y==41) 

    mprintf('%d\t%d\t%d\n',n1    ,n2    ,n3    )
    
end;
end
end
end
disp("Thus there are nine possible states")

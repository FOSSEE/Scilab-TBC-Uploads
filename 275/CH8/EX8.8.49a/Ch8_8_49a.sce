clc
clear
disp("Example 8.49a")
printf("\n")
disp("Prove the following boolean identities")
disp("A+BC=(A+B)(A+C)")
A=[0 0 0 0 1 1 1 1]
B=[0 0 1 1 0 0 1 1]
C=[0 1 0 1 0 1 0 1]
for i=1:length(A)
  Y(i)=A(i)+(B(i)*C(i))
  if(Y(i)==2)
    Y(i)=1
  end
end
for i=1:length(A)
  Z(i)=(A(i)+B(i))*(A(i)+C(i))
  if(Z(i)==2)
    Z(i)=1
  end
  if(Z(i)==3)
    Z(i)=1
  end
  if(Z(i)==4)
    Z(i)=1
  end
end
for i=1:length(A)
  if(Z(i)==Y(i))
    printf("_")
  else
    printf("NOT")
    abort
  end
end

  printf("proved")
  
  
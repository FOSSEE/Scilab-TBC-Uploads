clc
n=10;...................................//total pulses selected
p=0.8;..................................//probability of pulses hitting the dish
q=0.2;..................................//probability of miss
add=0;
for k=2;
    x(k)=((factorial(n)*(p^k)*((1-p)^(n-k)))/(factorial(k)*factorial(n-k)));
    disp(x(k),"Exactly two pulses missing the target");
end;
for k=0:1
    x(k)=((factorial(n)*(p^k)*((1-p)^(n-k)))/(factorial(k)*factorial(n-k)));
  add=add+x(k);
end;
  y(k)=1-add;
    disp(y(k),"Two or more pulses missing the target");
for k=6:10
    x(k)=((factorial(n)*(p^k)*((1-p)^(n-k)))/(factorial(k)*factorial(n-(k)));
    y(k)=sum(x(k));
    disp(y(k),"More than 5 pulses missing the target");
    
end;

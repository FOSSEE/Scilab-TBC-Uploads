//Chapter-8,Example 5,Page 196
clc();
close();

pKa=4.74

salt=0.1

acid=0.1

//according to Henderson equation pH of buffer solution

pH = pKa + log10(salt/acid)

printf('the pH of buffer solution is pH = %.2f ',pH)

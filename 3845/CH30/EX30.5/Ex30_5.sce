//Example 30.5
n=3;//Shell
number_subshell=0;//To store value of number of subshells
for i=0:1:n-1
    number_subshell=number_subshell+1;
end
printf('Number of subshells in the nth shell = %d\n\n',number_subshell)
Max=0;//To store value of Maximum number of electrons in a shell
for l=0:1:2
    electrons_in_subshell=2*(2*l+1)
    if l==0
        s='s';
    elseif l==1
        s='p';
    elseif l==2
        s='d';
    elseif l==3
        s='f';
    elseif l==4
        s='g';
    elseif l==5
        s='h';
    elseif l==6
        s='i';
    end
    printf('%d%s subshell can have a maximum of %d electrons\n',n,s,electrons_in_subshell)
    Max=Max+electrons_in_subshell;
end
printf('Maximum number of electrons that can be in the shell = %d',Max)
if Max==(2*n^2)
    printf('\n\nThis is the same as calculated by the formula: \nMaximum number of electrons that can be in the nth shell = (2*n^2)')
end
//The code is programmed for upto l=6. Beyond this, the subshell notation may be carried on in alphabetical order
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest


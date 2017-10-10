//Example 30.4
n=2;//Shell
number_subshell=0;//To store value of number of subshells
for i=0:1:n-1
    number_subshell=number_subshell+1;
end


//To calculate number of rows required for the table
rows=0;
for l=0:1:number_subshell-1
    rows=rows+2*(2*l+1)
end



//Defining string matrices
A=repmat(' ',[rows 4]);//To list n, l, m_l and m_s 
B=repmat(' ',[rows 3]);//To list subshell, number of electrons in each subshell and total number of electrons
C=['n' 'l' 'm_l' 'm_s' 'Subshell' 'Total in subshell' 'Total in shell'];//Header row



//Function to return subshell character 
function [s]=subshell(l)
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
endfunction
//Function defined for upto l=6



r=1;//Row number
total=0;//To store total number of electrons in the shell
for l=0:1:number_subshell-1
    m_l=l;
    B(r,1)=string(n)+subshell(l);//Subshell
    B(r,2)=string(2*(2*l+1));//Number of electrons in subshell
    total=total+(2*(2*l+1));
    for i=1:1:(2*(2*l+1))
        A(r,1)=string(n);//n
        A(r,2)=string(l);//l
        
        A(r,3)=string(m_l)//m_l
        if modulo(i,2)==0
            m_l=m_l-1;
        end//m_l (decreases by 1 after every two rows)
        
        if modulo(r,2)==0
            A(r,4)='-1/2';
        else
            A(r,4)='+1/2';
        end//m_s (positive and negative sign alternates with every row)
        r=r+1;
    end
end
B(1,3)=string(total);//Total number of electrons in shell
disp([C;A B])//Combining the matrices
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

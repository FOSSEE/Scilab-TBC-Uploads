//example 10.12
clc
clear
//pro= ('Enter the value to whic counter should progress:');
pro =11; // given input 
q=1;
aa=pro;
for i=1:4             //converting the given number in to binary 
    x=modulo(aa,2);
    b(q)=x;
    aa=aa/2;
    aa=floor(aa);
    q=q+1; 
end
           
bi=' ';   // then printing the NAND gate inputs 
for i=1:4
    if i==1 & b(i)==1 then
        bi=strcat([bi 'Qa']);
    elseif i==1 & b(i)== 0 ;
        bi=strcat([bi 'Qa''']);   
    end
    if i==2 & b(i)==1 then
        bi=strcat([bi 'Qb']);
    elseif i==2 & b(i)== 0 ;
        bi=strcat([bi 'Qb''']);   
    end
    if i==3 & b(i)==1 then
        bi=strcat([bi 'Qc']);
    elseif i==3 & b(i)== 0 ;
        bi=strcat([bi 'Qc''']);   
    end
    if i==4 & b(i)==1 then
        bi=strcat([bi 'Qd']);
    elseif i==4 & b(i)== 0 ;
        bi=strcat([bi 'Qd''']);   
    end

end
disp('The NAND gate inputs must be :'); 
disp(bi)


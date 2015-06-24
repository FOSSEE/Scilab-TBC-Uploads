//Example 4.2
//Database Management
//Page no. 112
clc;clear;close;
M=[12,25,21,35;25,7,23,29;10,27,7,36;26,26,26,35;29,0,23,30];   //marks

//calculation of composite score
for i=1:5,
    j=1;k=0;
    max1=M(i,j);
    if(max1<M(i,j+1))
        max1=M(i,j+1)
    else
        k=1;
    end,
    
        if(M(i,j+2)>M(i,j+k))
        max2=M(i,j+2);
    else
        max2=M(i,j);
    end,
       CS(i,1)=max1+max2+M(i,4);
end

I=['Reg. No.','Name of Students','Test 1','Test 2','Test 3','Final';
'CS/01','C.V.Rajan','12','25','21','35';
'CS/02','B.X.Roy','25','07','23','29';
'CS/03','P.C.Sasikumar','10','27','07','36';
'CS/04','B.D.Box','26','26','26','35';
'CS/05','K.K.Mukherjee','29','0','23','30';]
printf('\n')
for i=1:6
    for j=1:6
        if(j>2)
                printf('\t')
            end
            
        printf('%s  ',I(i,j));
        if(i~=1)
            if(j>2)
                printf('\t')
            end
            printf('    ')
            
        end
        if(i==1 & j==6)
            printf('Composite Score\n')
        end
        
    end
    
    if(i~=1)
    printf('%i\n',CS(i-1,1));
end

end
//disp(CS,'Composite Score',I);
max1=CS(1,1);j=1;
for i=2:5
    if(max1<CS(i,1))
        max1=CS(i,1);j=i;
    end,
end
printf('\n\nTopper is:\n%s\t%s\t%s',I(1,1),I(1,2),'Composite Score')
printf('\nCS/0%i\t\t%s\t\t\t%i',j,I(j+1,2),CS(j,1))

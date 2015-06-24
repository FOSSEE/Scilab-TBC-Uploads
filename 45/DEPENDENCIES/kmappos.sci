//this funtion prints the minimal expression in the Pruduct of sums form for a given 4-vriable kmap
//this program requires noof.sci 
function []=kmappos(k)
    n=4;
    k(:,:,2)=zeros(n,n);
    var=['A' 'B' 'C' 'D'];
p1=['A + B' 'A + B''' 'A'' + B''' 'A'' + B'];
p2=['C + D';'C + D''';'C'' + D''';'C'' + D'];
    cmn4=4;
    cmn2=2;
    temp=1;
    disp(k(:,:,1));
    disp("is :");
    disp(" ")
    //checking for 16 cells
    for i=1:n
        for j=1:n
            if(k(i,j)~=1)
                temp=0;
                break;
             end
        end
    end
    printf('   ');
    if(temp==1)
        printf("1");
        abort;
    end
    for i=1:n
        for j=1:n
            if(k(i,j)~=0)
                temp=0;
                break;
             end
        end
    end
    printf('   ');
    if(temp==1)
        printf("0");
        abort;
    end
    
    //checking for 8 cells cases
    z1=zeros(2,4);
    z2=zeros(4,2);
    temp1=['00' '01' '11' '10'];
    temp2=temp1';
    for i=1:n
            if(i==4)
                t=1;
            else
                t=i+1;
            end
            z=[k(i,:,1);k(t,:,1)];
            if(z==z1)
                printf('(');
                k(i,:,2)=[1 1 1 1];
                k(t,:,2)=[1 1 1 1];
                a=strsplit(temp2(i,1));
                b=strsplit(temp2(t,1));
                c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                            printf(var(in));
                        break;
                     else
                         if(c(in)==0 & a(in)=='1')
                        printf('%s''',var(in));
                            break;
                          end
                     end
                end
                printf(')');
            end
    end
    for j=1:n
        if(j==4)
            t=1;
        else
            t=j+1;
        end
        z=[k(:,j,1) k(:,t,1)];
        if(z==z2)
            printf('(');
            k(:,j,2)=[1;1;1;1];
            k(:,t,2)=[1;1;1;1];
            a=strsplit(temp1(1,j));
            b=strsplit(temp1(1,t));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf(var(2+in));
                    break;
                 else
                     if(c(in)==0 & a(in)=='1')
                         printf('%s''',var(2+in));
                         break;
                     end
                 end
            end
            printf(')')
       end
    end
    //checking for 4 cells cases
    z1=zeros(1,4);
    z2=zeros(4,1);
    z3=zeros(2,2);
    temp1=['00' '01' '11' '10'];
    temp2=temp1';
    for t=1:n
            z=k(t,:,1);
            no=noof(k(t,:,2));
            if(z==z1 & no<cmn4)
                printf('(')
                k(t,:,2)=[1 1 1 1];
                a=strsplit(temp1(1,t));
                for in=1:max(size(a))
                    if(a(in)=='0')
                        if in ~= 1 then
                            printf(' + ');
                        end
                        printf(var(in));
                     end
                     if(a(in)=='1')
                         if in ~= 1 then
                            printf(' + ');
                        end
                        printf('%s''',var(in));    
                     end
                 end
                 printf(")");
              end
    end
    for t=1:n
        z=k(:,t,1);
        no=noof(k(:,t,2));
        if(z==z2 & no<cmn4)
            printf('(');
            k(:,t,2)=[1;1;1;1];
            a=strsplit(temp2(t,1));
            for in=1:max(size(a))
                if(a(in)=='0')
                    if in ~= 1 then
                            printf(' + ');
                        end
                    printf(var(2+in));
                 end
                 if(a(in)=='1')
                     if in ~= 1 then
                            printf(' + ');
                        end
                        printf('%s''',var(2+in));
                 end
            end
                 printf(")");
        end
    end
    for i=1:n
        for j=1:n
           if(i==n)
                t1=1;
            else
                t1=i+1;
            end
           if(j==n)
                t2=1;
            else
                t2=j+1;
            end
            z4=[k(i,j,1) k(i,t2,1);k(t1,j,1) k(t1,t2,1)];
            z5=[k(i,j,2) k(i,t2,2);k(t1,j,2) k(t1,t2,2)];
            no=noof(z5);
            if(z4==z3 & no<cmn4)
                printf('(')
                k(i,j,2)=1;
                k(i,t2,2)=1;
                k(t1,j,2)=1;
                k(t1,t2,2)=1;
                a=strsplit(temp2(i,1));
                b=strsplit(temp2(t1,1));
                c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        printf(var(in));
                     end
                     if(c(in)==0 & a(in)=='1')
                         printf('%s''',var(in));
                     end
                 end
                a=strsplit(temp1(1,j));
                b=strsplit(temp1(1,t2));
                c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                            printf(' + ');
                        printf(var(2+in));
                     end
                     if(c(in)==0 & a(in)=='1')
                            printf(' + ');
                         printf('%s''',var(2+in));
                         
                     end
                 end
                 printf(")");
            end
        end
    end
    //checking for 2 cells
    z6=[0 0];
    z7=z6';
    for i=1:n
        for j=1:n
            if(i==n)
                t1=1;
            else
                t1=i+1;
            end
           if(j==n)
                t2=1;
            else
                t2=j+1;
            end
            z8=[k(i,j,1) k(i,t2,1)];
            z9=[k(i,j,2) k(i,t2,2)];
            no1=noof(z9);
            if(z8==z6 & no1<cmn2 )
                
             printf('(');
              k(i,j,2)=1;
              k(i,t2,2)=1;
              a=strsplit(temp1(1,j));
              b=strsplit(temp1(1,t2));
              c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        printf(p1(1,i));
                        printf(' + ');
                        printf(var(2+in));
                        printf(")");
                     end
                     if(c(in)==0 & a(in)=='1')
                         printf(p1(1,i));
                         printf(" + ");
                         printf('%s''',var(2+in));
                         
                         printf(")");
                     end
                 end
            end
        end
    end
    for i=1:n
        for j=1:n
            if(i==n)
                t1=1;
            else
                t1=i+1;
            end
           if(j==n)
                t2=1;
            else
                t2=j+1;
            end
            z10=[k(i,j,1);k(t1,j,1)];
            z11=[k(i,j,2);k(t1,j,2)];
            no2=noof(z11);
            if(z10==z7 & no2<cmn2)
                printf('(');
              k(i,j,2)=1;
              k(t1,j,2)=1;
              a=strsplit(temp2(i,1));
              b=strsplit(temp2(t1,1));
              c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        printf(p2(j,1));
                        printf(" + ");
                        printf(var(in));
                        printf(")");
                     end
                     if(c(in)==0 & a(in)=='1')
                         printf(p2(j,1));
                         printf(" + ");
                         printf('%s''',var(in));
                         
                         printf(")");
                     end
                 end
            end
        end
    end
    //for single cell
    for i=1:n
        for j=1:n
            if(k(i,j,2)==0 & k(i,j,1)==0)
                printf('(');
                a=strsplit(temp1(1,j));
                b=strsplit(temp2(i,1));
                for in=1:max(size(a(:,1)))
                    if(a(in,1)=='1')
                        printf('%s''',var(2+in));
                        printf(' + ');
                    else
                        if(a(in,1)=='0')
                            printf(var(in+2));
                            
                            printf(' + ');
                        end
                     end
                end
                for in=1:max(size(b(:,1)))
                    if(b(in,1)=='1')
                          printf('%s''',var(in));
                        if(in~=max(size(b(:,1))))
                            printf(' + ');
                        end
                    else
                        if(b(in,1)=='0')
                           printf(var(in));
                          
                        if(in~=max(size(b(:,1))))
                            printf(' + ');
                        end

                        end
                     end
                end
                    printf(")");
            end
        end
    end
endfunction
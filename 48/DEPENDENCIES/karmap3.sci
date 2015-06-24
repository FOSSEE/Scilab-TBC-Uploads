function []=karmap3(k)
    n=4;        //three variable kmap
    m=2
    k(:,:,2)=zeros(m,n);
    var=['z' 'x' 'y'];
    p1=['z''' 'z'];
    p2=['x''y''';'x''y';'xy';'xy'''];
    cmn4=4;
    cmn2=3;
    temp=1;
    printf('The minimal ecpression of the given Kmap ');
    disp(k(:,:,1));
    disp("is :");
    printf('f');
    printf("=");
    //8 cells
    for i=1:m        
        for j=1:n
            if(k(i,j)~=1 & k(i,j)~=2)
                temp=0;
                break;
             end
        end
    end
    if(temp==1)
        printf("1");
        abort;
    end
    //4 cells
    z1=ones(1,4);
    z2=ones(4,1);
    z3=ones(2,2);
    temp1=['0' '1'];
    temp2=['00';'01';'11';'10'];
    for t=1:m
            z=k(t,:,1);
            no=number_of(k(t,:,2),1);
            if(number_of(z,0)==0 & no<cmn4 & number_of(z,1)>0)
                k(t,:,2)=z1;
                a=strsplit(temp1(1,t));
                for in=1:max(size(a))
                    if(a(in)=='0')
                        printf('%s''',var(in));
                     end
                     if(a(in)=='1')
                         printf(var(in));
                     end
                 end
                 printf("+");
              end
    end
    for i=1:m-1
        for j=1:n
           t1=i+1;
           if(j==n)
                t2=1;
            else
                t2=j+1;
            end
            z4=[k(i,j,1) k(i,t2,1);k(t1,j,1) k(t1,t2,1)];
            z5=[k(i,j,2) k(i,t2,2);k(t1,j,2) k(t1,t2,2)];
            no=number_of(z5);
            if(number_of(z4,0)==0 & no<cmn4 & number_of(z4,1)>0)
                k(i,j,2)=1;
                k(i,t2,2)=1;
                k(t1,j,2)=1;
                k(t1,t2,2)=1;
                a=strsplit(temp2(j,1));
                b=strsplit(temp2(t2,1));
                c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        printf('%s''',var(1+in));
                     end
                     if(c(in)==0 & a(in)=='1')
                         printf(var(1+in));
                     end
                 end
                 printf("+");
            end
        end
    end
    //2 cells
    z6=[1 1];
    z7=z6';
    for i=1:m
        for j=1:n
                t1=i+1;
                if(j==n)
                    t2=1;
                else
                    t2=j+1;
                 end
            z8=[k(i,j,1) k(i,t2,1)];
            z9=[k(i,j,2) k(i,t2,2)];
            no1=number_of(z9,1);
            if(number_of(z8,0)==0 & no1<cmn2 & number_of(z8,1)>0)
              k(i,j,2)=1;
              k(i,t2,2)=1;
              printf(p1(1,i));
              a=strsplit(temp2(j,1));
              b=strsplit(temp2(t2,1));
              c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        printf('%s''',var(1+in));
                        printf("+");
                     end
                     if(c(in)==0 & a(in)=='1')
                         printf(var(1+in));
                         printf("+");
                     end
                 end
            end
        end
    end
    for i=1:m-1
        for j=1:n
           t1=i+1;
           if(j==n)
                t2=1;
            else
                t2=j+1;
            end
            z10=[k(i,j,1);k(t1,j,1)];
            z11=[k(i,j,2);k(t1,j,2)];
            no2=number_of(z11,1);
            if(number_of(z10,0)==0 & no2<cmn2 & number_of(z10,1)>0)
              k(i,j,2)=1;
              k(t1,j,2)=1;
              printf(p2(j,1));
              printf("+");
            end
        end
    end
    //single cell
    for i=1:m
        for j=1:n
            if(k(i,j,2)==0 & k(i,j,1)==1)
                printf(p1(1,i));
                printf(p2(j,1));
                printf("+");
            end
        end
    end
    printf("0");
    disp(" ")
endfunction
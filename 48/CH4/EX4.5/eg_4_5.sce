//f=x^y^z+wxz+xy+v^w^yz^
clc;
n=4;
k=[0 0 0 0;
   1 0 1 1;
   0 1 1 0;
   1 1 1 0];
k(:,:,2)=[0 0 0 0;
          1 0 1 1;
          0 1 1 0;
          0 1 1 0];
//k=[1 0 0 0;
//   0 0 0 0;
//   0 0 0 0;
//   0 0 1 0];
//k(:,:,2)=[1 0 0 0;
//          0 0 0 0;
//          0 0 0 0;
//          1 0 0 0];
k(:,:,3)=zeros(n,n);
k(:,:,4)=zeros(n,n);
var=['y' 'z' 'v' 'w' 'x'];
p1=['y''z''' 'y''z' 'yz' 'yz'''];
p2=['v''w''x''';'v''w''x';'v''wx';'v''wx''';
'vw''x''';'vw''x';'vwx';'vwx'''];
cmn16=9;
cmn8=5;
cmn4=3;
cmn2=2;
temp=1;
    printf('The minimal ecpression of the given Kmap ');
    disp(k(:,:,1));
    disp(k(:,:,2));
    disp("is :");
printf('f');
printf("=");
//32 cells
for i=1:n
    for j=1:n
        for l=1:2
            if(k(i,j,l)~=1 & k(i,j,l)~=2)
                temp=0;
                break;
             end
        end
    end
end
if(temp==1)
    printf("1");
    abort;
end
//16 cells
//8+8 row cells
z1=ones(2,4,2);
z2=ones(4,2,2);
temp1=['00' '01' '11' '10'];
temp2=['000' '001' '011' '010' '100' '101' '111' '110'];
for i=1:n
        if(i==4)
            t=1;
        else
            t=i+1;
        end
        z=[k(i,:,1:2);k(t,:,1:2)];
        z1=[k(i,:,3:4);k(t,:,3:4)];
        if(noof3(z,0)==0 & noof3(z1,1)<cmn16)
            k(i,:,3:4)=ones(4,2);
            k(t,:,3:4)=ones(4,2);
            a=strsplit(temp1(1,i));
            b=strsplit(temp1(1,t));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(in));
                 else
                     if(c(in)==0 & a(in)=='1')
                        printf(var(in));
                      end
                 end
            end
            k(i,:,3:4)=ones(1,4,2);
            k(t,:,3:4)=ones(1,4,2);
        end
end
//8+8 column cells
for j=1:n
    if(j==4)
        t=1;
    else
        t=j+1;
    end
    z=[k(:,j,1:2) k(:,t,1:2)];
    z1=[k(:,j,3:4) k(:,t,3:4)];
    if(noof3(z,0)==0 & noof3(z1,1)<cmn16)
        k(:,j,3:4)=ones(4,2);
        k(:,t,3:4)=ones(4,2);
        a=strsplit(temp2(1,j));
        b=strsplit(temp2(1,t));
        c=strsplit(temp2(1,j+4));
        d=strsplit(temp2(1,t+4));
        c1=check(a,b,c,d);
        for in=1:max(size(c1))
            if(c1(in)==0 & a(in)=='0')
                printf('%s''',var(2+in));
             else
                 if(c1(in)==0 & a(in)=='1')
                     printf(var(2+in));
                 end
             end
        end
        printf("+");
        k(:,j,3:4)=ones(1,4,2);
        k(:,t,3:4)=ones(1,4,2);
   end
end
//4x4 front matrix
if(number_of(k(:,:,1),0)==0 & number_of(k(:,:,3),1)<cmn16)
    printf(var(3));
    printf('''');
    k(:,:,3)=ones(4,4);
end
//4x4 rear matrix
if(number_of(k(:,:,2),0)==0 & number_of(k(:,:,4),1)<cmn16)
    printf(var(3));
    k(:,:,4)=ones(4,4);
end
//8 cells
//2x2 front and rear cells
for i=1:n
    for j=1:n
        if(i==4)
            t=1;
        else
            t=i+1;
        end
        if(j==4)
            u=1;
        else
            u=j+1;
        end
        z=k(i,j,1:2);
        z(1,2,:)=k(i,u,1:2);
        z(2,1,:)=k(t,j,1:2);
        z(2,2,:)=k(t,u,1:2);
        z1=k(i,j,3:4);
        z1(1,2,:)=k(i,u,3:4);
        z1(2,1,:)=k(t,j,3:4);
        z1(2,2,:)=k(t,u,3:4);
        if(noof3(z,0)==0 & noof3(z1,1)<cmn8)
            a=strsplit(temp1(1,i));
            b=strsplit(temp1(1,t));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(in));
                 else
                     if(c(in)==0 & a(in)=='1')
                        printf(var(in));
                      end
                 end
            end
            a=strsplit(temp2(1,j));
            b=strsplit(temp2(1,u));
            c=strsplit(temp2(1,4+j));
            d=strsplit(temp2(1,4+u));
            c1=check(a,b,c,d);
            for in=1:max(size(c1))
                if(c1(in)==0 & a(in)=='0')
                    printf('%s''',var(2+in));
                 else
                     if(c1(in)==0 & a(in)=='1')
                        printf(var(2+in));
                      end
                 end
            end
            k(i,j,3:4)=ones(1,1,2);
            k(i,u,3:4)=ones(1,1,2);
            k(t,j,3:4)=ones(1,1,2);
            k(t,u,3:4)=ones(1,1,2);
            printf("+");
        end
    end
end
//1x4 front and rear cells
for i=1:n
    z=k(i,:,1:2);
    z1=k(i,:,3:4);
    if(noof3(z,0)==0 & noof3(z1,1)<cmn8)
        printf(p1(i));
        printf("+");
        k(i,:,3:4)=ones(1,4,2);
     end
end
//4x1 front and rear cells
for j=1:n
    z=k(:,j,1:2);
    z1=k(:,j,3:4);
    if(noof3(z,0)==0 & noof3(z1,1)<cmn8)
        a=strsplit(temp2(1,j));
        b=strsplit(temp2(1,u));
        c=strcmp(a,b);
        for in=1:max(size(c))
            if(c(in)==0 & a(in)=='0')
                printf('%s''',var(2+in));
             else
                 if(c(in)==0 & a(in)=='1')
                    printf(var(2+in));
                  end
             end
        end
        printf("+");
        k(:,j,3:4)=ones(1,2,4);
     end
end
//2x4 front cells
for i=1:n
    if(i==4)
        t=1;
    else
        t=i+1;
    end
    z=k(i,:,1);
    z(2,:,1)=k(t,:,1);
    z1=k(i,:,3);
    z1(2,:,1)=k(t,:,3);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn8)
        a=strsplit(temp1(1,i));
        b=strsplit(temp1(1,t));
        c=strcmp(a,b);
        for in=1:max(size(c))
            if(c(in)==0 & a(in)=='0')
                printf('%s''',var(in));
             else
                 if(c(in)==0 & a(in)=='1')
                    printf(var(in));
                  end
             end
        end
        printf('%s''',var(3));
        printf("+");
        k(i,:,3)=ones(1,4);
        k(t,:,3)=ones(1,4);
    end
end
//2x4 rear cells
for i=1:n
    if(i==4)
        t=1;
    else
        t=i+1;
    end
    z=k(i,:,2);
    z(2,:,1)=k(t,:,2);
    z1=k(i,:,4);
    z1(2,:,1)=k(t,:,4);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn8)
        a=strsplit(temp1(1,i));
        b=strsplit(temp1(1,t));
        c=strcmp(a,b);
        for in=1:max(size(c))
            if(c(in)==0 & a(in)=='0')
                printf('%s''',var(in));
             else
                 if(c(in)==0 & a(in)=='1')
                    printf(var(in));
                  end
             end
        end
        printf(var(3));
        printf("+");
        k(i,:,4)=ones(1,4);
        k(t,:,4)=ones(1,4);
    end
end
//4x2 front cells
for j=1:n
    if(j==4)
        u=1;
    else
        u=j+1;
    end
    z=k(:,j,1);
    z(:,2,1)=k(:,u,1);
    z1=k(:,j,3);
    z1(:,2,1)=k(:,u,3);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn8)
        a=strsplit(temp2(1,i));
        b=strsplit(temp2(1,t));
        c=strcmp(a,b);
        for in=1:max(size(c))
            if(c(in)==0 & a(in)=='0')
                printf('%s''',var(in));
             else
                 if(c(in)==0 & a(in)=='1')
                    printf(var(in));
                  end
             end
        end
        printf('%s''',var(3));
        printf("+");
        k(:,j,3)=ones(4,1);
        k(:,u,3)=ones(4,1);
    end
end
//4x2 rear cells
for j=1:n
    if(j==4)
        u=1;
    else
        u=j+1;
    end
    z=k(:,j,2);
    z(:,2,1)=k(:,u,2);
    z1=k(:,j,4);
    z1(:,2,1)=k(:,u,4);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn8)
        a=strsplit(temp2(1,i));
        b=strsplit(temp2(1,t));
        c=strcmp(a,b);
        for in=1:max(size(c))
            if(c(in)==0 & a(in)=='0')
                printf('%s''',var(4+in));
             else
                 if(c(in)==0 & a(in)=='1')
                    printf(var(4+in));
                  end
             end
        end
        printf(var(3));
        printf("+");
        k(:,j,4)=ones(4,1);
        k(:,u,4)=ones(4,1);
    end
end
//4 cells
//1x4 front cells
for i=1:n
    z=k(i,:,1);
    z1=k(i,:,3);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn4)
        printf(p1(1,i));
        printf('%s''',var(3));
        printf("+");
        k(i,:,3)=ones(1,4);
    end
end
//1x4 rear cells
for i=1:n
    z=k(i,:,2);
    z1=k(i,:,4);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn4)
        printf(p1(1,i));
        printf(var(3));
        printf("+");
        k(i,:,4)=ones(1,4);
    end
end
//4x1 front cells
for j=1:n
    z=k(:,j,1);
    z1=k(:,j,3);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn4)
        printf(p2(j,1));
        printf("+");
        k(:,j,3)=ones(4,1);
    end
end
//4x1 rear cells
for j=1:n
    z=k(:,j,2);
    z1=k(:,j,4);
    if(number_of(z,0)==0 & number_of(z1,1)<cmn4)
        printf(p2(4+j,1));
        printf("+");
        k(:,j,4)=ones(4,1);
    end
end
//2x1 front and rear matrix
for i=1:n
    for j=1:n
        if(i==4)
            t=1;
        else
            t=i+1;
        end
        z=[k(i,j,1);k(t,j,1)];
        z(:,:,2)=[k(i,j,2) k(t,j,2)];
        z1=[k(i,j,3);k(t,j,3)];
        z1(:,:,2)=[k(i,j,4) k(t,j,4)];
        if(noof3(z,0)==0 & noof3(z1,1)<cmn4)
            a=strsplit(temp1(1,i));
            b=strsplit(temp1(1,t));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(in));
                 else
                     if(c(in)==0 & a(in)=='1')
                         printf(var(in));
                     end
                 end
            end
            a=strsplit(temp2(1,j));
            b=strsplit(temp2(1,4+j));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(2+in));
                 else
                     if(c(in)==0 & a(in)=='1')
                         printf(var(2+in));
                     end
                 end
            end
            printf('+');
        k(i,j,3)=1;k(t,j,3)=1;
        k(i,j,4)=1; k(t,j,4)=1;
        end
    end
end
//1x2 front and rear matrix
for i=1:n
    for j=1:n
        if(j==4)
            u=1;
        else
            u=j+1;
        end
        z=[k(i,j,1) k(i,u,1)];
        z(:,:,2)=[k(i,j,2) k(i,u,2)];
        z1=[k(i,j,3) k(i,u,3)];
        z1(:,:,2)=[k(i,j,4) k(i,u,4)];
        if(noof3(z,0)==0 & noof3(z1,1)<1)
            printf(p1(i));
            a=strsplit(temp2(1,j));
            b=strsplit(temp2(1,u));
            c=strsplit(temp2(1,4+j));
            d=strsplit(temp2(1,4+j));
            c1=check(a,b,c,d);
            for in=1:max(size(c1))
                if(c1(in)==0 & a(in)=='0')
                    printf('%s''',var(2+in));
                 else
                     if(c1(in)==0 & a(in)=='1')
                         printf(var(2+in));
                     end
                 end
            end
            printf('+');
        k(i,j,3)=1; k(i,u,3)=1;
        k(i,j,4)=1; k(i,u,4)=1;
        end
    end
end
//2 cells
//1x2 front cells
for i=1:n
    for j=1:n
        if(j==4)
            u=1;
        else
            u=j+1;
        end
        z=[k(i,j,1) k(i,u,1)];
        z1=[k(i,j,3) k(i,u,3)];
        if(number_of(z,0)==0 & number_of(z1,1)<cmn2)
            printf(p1(1,i));
            a=strsplit(temp2(1,j));
            b=strsplit(temp2(1,u));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(2+in));
                 else
                     if(c(in)==0 & a(in)=='1')
                         printf(var(2+in));
                     end
                 end
            end
            printf('+');
            k(i,j,3)=1; k(i,u,3)=1;
        end
    end
end
//1x2 rear cells
for i=1:n
    for j=1:n
        if(j==4)
            u=1;
        else
            u=j+1;
        end
        z=[k(i,j,2) k(i,u,2)];
        z1=[k(i,j,4) k(i,u,4)];
        if(number_of(z,0)==0 & number_of(z1,1)<cmn2)
            printf(p1(1,i));
            a=strsplit(temp2(1,4+j));
            b=strsplit(temp2(1,4+u));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(2+in));
                 else
                     if(c(in)==0 & a(in)=='1')
                         printf(var(2+in));
                     end
                 end
            end
            printf('+');
            k(i,j,4)=1; k(i,u,4)=1;
        end
    end
end
//2x1 front cells
for i=1:n
    for j=1:n
        if(i==4)
            t=1;
        else
            t=i+1;
        end
        z=[k(i,j,1);k(t,j,1)];
        z1=[k(i,j,3) k(t,j,3)];
        if(number_of(z,0)==0 & number_of(z1,1)<cmn2)
            a=strsplit(temp1(1,i));
            b=strsplit(temp1(1,t));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(in));
                 else
                     if(c(in)==0 & a(in)=='1')
                         printf(var(in));
                     end
                 end
            end
            printf(p2(j,1))
            printf('+');
            k(i,j,3)=1; k(i,u,3)=1;
        end
    end
end
//2x1 rear cells
for i=1:n
    for j=1:n
        if(i==4)
            t=1;
        else
            t=i+1;
        end
        z=[k(i,j,2);k(t,j,2)];
        z1=[k(i,j,4) k(t,j,4)];
        if(number_of(z,0)==0 & number_of(z1,1)<cmn2)
            a=strsplit(temp1(1,i));
            b=strsplit(temp1(1,t));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    printf('%s''',var(in));
                 else
                     if(c(in)==0 & a(in)=='1')
                         printf(var(in));
                     end
                 end
            end
            printf(p2(4+j,1))
            printf('+');
            k(i,j,4)=1; k(i,u,4)=1;
        end
    end
end
//1 cell front and rear matrix
for i=1:n
    for j=1:n
        z=k(i,j,1:2);
        z1=k(i,j,3:4);
        if(noof3(z,0)==0 & noof3(z1,1)<cmn2)
            printf(p1(1,i));
            a=strsplit(temp2(1,j));
            b=strsplit(temp2(1,4+j));
            c=strcmp(a,b);
            for in=2:max(size(c))
                if(a(in)=='0' & c(in)==0)
                    printf('%s''',var(2+in));
                 else
                     if(a(in)=='1' & c(in)==0)
                         printf(var(2+in));
                     end
                 end
             end
             printf('+');
             k(i,j,3:4)=ones(1,1,2);
         end
     end
end
//single cell
for i=1:n
    for j=1:n
        for z=1:2
             if(k(i,j,z)==1 & k(i,j,z+2)==0)
                 printf(p2(j,1));
                 printf(p1(1,i));
                 printf('+');
             end
        end
    end
end
printf('0');
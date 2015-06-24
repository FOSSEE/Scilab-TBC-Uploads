//4-Variable KMAP 
//returns a string of the minimized expression 
//requires noof1.sci
//noof1.sci should be executed before executing this function 
function bi = donkmapij(k)
    n=4;
    k(:,:,2)=zeros(n,n);
    var=['I' 'J' 'Bn' 'An'];
    p1=['I''J''' 'I''J' 'IJ' 'IJ'''];
    p2=['Bn''An''';'Bn''An';'BnAn';'BnAn'''];
    cmn4=4;
    cmn2=2;
    temp=1;
    bi= ' ';
   disp(k(:,:,1));
    for i=1:n
        for j=1:n
            if(k(i,j)~=1 | k(i,j)~=2)
                temp=0;
                break;
             end
        end
    end
    if(temp==1)
        printf("1");
        abort;
    end
    //checking the 8 cells cases
    z1=ones(2,4);
    z2=ones(4,2);
    temp1=['00' '01' '11' '10'];
    temp2=temp1';
    for i=1:n
            if(i==4)
                t=1;
            else
                t=i+1;
            end
            z=[k(i,:,1);k(t,:,1)];
            if(noof1(z,0)==0 & noof1(z,1)>1)
                k(i,:,2)=[1 1 1 1];
                k(t,:,2)=[1 1 1 1];
                a=strsplit(temp2(i,1));
                b=strsplit(temp2(t,1));
                c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        bi = strcat([bi var(in) '''']);
                        bi = strcat([bi " + "]);
                        break;
                     else
                         if(c(in)==0 & a(in)=='1')
                           bi = strcat([bi var(in)]);
                            bi = strcat([bi " + "]);
                            break;
                          end
                end
            end
    end
end
    for j=1:n
        if(j==4)
            t=1;
        else
            t=j+1;
        end
        z=[k(:,j,1) k(:,t,1)];
        if(noof1(z,0)==0 & noof1(z,1)>0)
            k(:,j,2)=[1;1;1;1];
            k(:,t,2)=[1;1;1;1];
            a=strsplit(temp1(1,j));
            b=strsplit(temp1(1,t));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 & a(in)=='0')
                    bi = strcat([bi var(2+in) '''']);
                    bi = strcat([bi " + "]);
                    break;
                 else
                     if(c(in)==0 & a(in)=='1')
                         bi = strcat([bi var(2+in)]);
                         bi = strcat([bi " + "]);
                         break;
                     end
                 end
            end
       end
    end
    //checking the 4 cells cases
    z1=ones(1,4);
    z2=ones(4,1);
    z3=ones(2,2);
    temp1=['00' '01' '11' '10'];
    temp2=temp1';
    for t=1:n
            z=k(t,:,1);
            no=noof1(k(t,:,2),1);
            if(noof1(z,0)==0 & no<cmn4 & noof1(z,1)>0)
                k(t,:,2)=z1;
                a=strsplit(temp1(1,t));
                for in=1:max(size(a))
                    if(a(in)=='0')
                        bi = strcat([bi var(in) '''']);
                     end
                     if(a(in)=='1')
                         bi = strcat([bi var(in)]);
                     end
                 end
                 bi = strcat([bi " + "]);
              end
    end
    for t=1:n
        z=k(:,t,1);
        no=noof1(k(:,t,2),1);
        if(noof1(z,0)==0 & no<cmn4 & noof1(z,1)>0)
            k(:,t,2)=z2;
            a=strsplit(temp2(t,1));
            for in=1:max(size(a))
                if(a(in)=='0')
                    bi = strcat([bi var(2+in) '''']);
                 end
                 if(a(in)=='1')
                     bi = strcat([bi var(2+in)]);
                 end
            end
                 bi = strcat([bi " + "]);
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
            no=noof1(z5,1);
            if(noof1(z4,0)==0 & no<cmn4 & noof1(z4,1)>0)
                k(i,j,2)=1;
                k(i,t2,2)=1;
                k(t1,j,2)=1;
                k(t1,t2,2)=1;
                a=strsplit(temp2(i,1));
                b=strsplit(temp2(t1,1));
                c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        bi = strcat([bi ,var(in) '''']);
                     end
                     if(c(in)==0 & a(in)=='1')
                         bi = strcat([bi var(in)]);
                     end
                 end
                a=strsplit(temp1(1,j));
                b=strsplit(temp1(1,t2));
                c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        bi = strcat([bi ,var(2+in) '''']);
                     end
                     if(c(in)==0 & a(in)=='1')
                         bi = strcat([bi var(2+in)]);
                     end
                 end
                 bi = strcat([bi " + "]);
            end
        end
    end
    //2 cells
    z6=[1 1];
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
            no1=noof1(z9,1);
            if(noof1(z8,0)==0 & no1<cmn2 & noof1(z8,1)>0)
              k(i,j,2)=1;
              k(i,t2,2)=1;
              a=strsplit(temp1(1,j));
              b=strsplit(temp1(1,t2));
              c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        bi = strcat([bi p1(1,i)]);
                        bi = strcat([bi ,var(2+in) '''']);
                        bi = strcat([bi " + "]);
                     end
                     if(c(in)==0 & a(in)=='1')
                         bi = strcat([bi p1(1,i)]);
                         bi = strcat([bi var(2+in)]);
                         bi = strcat([bi " + "]);
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
            no2=noof1(z11,1);
            if(noof1(z10,0)==0 & no2<cmn2 & noof1(z10,1)>0)
              k(i,j,2)=1;
              k(t1,j,2)=1;
              a=strsplit(temp2(i,1));
              b=strsplit(temp2(t1,1));
              c=strcmp(a,b);
                for in=1:max(size(c))
                    if(c(in)==0 & a(in)=='0')
                        bi = strcat([bi p2(j,1)]);
                        bi = strcat([bi var(in) '''']);
                        bi = strcat([bi " + "]);
                     end
                     if(c(in)==0 & a(in)=='1')
                         bi = strcat([bi p2(j,1)]);
                         bi = strcat([bi var(in)]);
                         bi = strcat([bi " + "]);
                     end
                 end
            end
        end
    end
    //checking the single cell cases 
    for i=1:n
        for j=1:n
            if(k(i,j,2)==0 & k(i,j,1)==1)
                a=strsplit(temp1(1,j));
                b=strsplit(temp2(i,1));
                for in=1:max(size(a(:,1)))
                    if(a(in,1)=='1')
                        bi = strcat([bi var(in+2)]);
                    else
                        if(a(in,1)=='0')
                            bi = strcat([bi var(2+in) '''']);
                        end
                     end
                end
                for in=1:max(size(b(:,1)))
                    if(b(in,1)=='1')
                        bi = strcat([bi var(in)]);
                    else
                        if(b(in,1)=='0')
                            bi = strcat([bi var(in) '''']);
                        end
                     end
                end
                    bi = strcat([bi " + "]);
            end
        end
    end
    bi = strcat([bi "0 "]);
endfunction
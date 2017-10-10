clear;
clc;
function [Zbus]=zeebus(nelemnt,ind,node);
    if ind==1;
        Zbus=input('Partial matrix Zbus');
        ind=0;
        else
    end
    if ind==0;
        for l=1:nelemnt;
            p=input('bus number p');
             q=input('bus number q');
             zb=input('impedence');
             typee=input('type of bus');
             if typee==1;
                 for k=1:q;
                     if k==q;
                         Zbus(k,k)=zb;
                     else
                         Zbus(k,q)=0;
                     end
                 end
             end
             if typee==2;
                 for k=1:q;
                     if k==q;
                         Zbus(q,q)=zb+Zbus(p,p);
                     else
                         if k==p;
                             Zbus(p,q)=Zbus(p,p);
                             Zbus(q,p)=Zbus(p,q);
                         else
                             Zbus(k,q)=0;
                             Zbus(q,k)=0;
                         end
                     end
                 end
             end
             if typee==3;
                 y=1/(zb+Zbus(p,p)-2*Zbus(p,q)+Zbus(q,q));
                 for k=1:node;
                     X(k,1)=Zbus(k,p)-Zbus(k,q);
                     Xt(1,k)=(k:1);
                 end
                 Zbus=Zbus-(-y)*X*X';
             end
             if typee==4;
                 y=1/(zb+Zbus(q,q));
                 for k=1:node;
                     X(k,1)=-Zbus(k,q);
                     Xt(1,k)=(k:1);
                 end
                 Zbus=Zbus-(-y)*X*X';
             end
         end
         else
                                     
            
    end
    
endfunction
nelemnt=7;
ind=0;
node=4;
[Zbus]=zeebus(nelemnt,ind,node);
mprintf("Zbus = \n");
disp(Zbus);
nelemnt=1;
ind=1;
[Zbus]=zeebus(nelemnt,ind,node);
disp(Zbus);

clear;
clc;
function fault3faze (Zbus,nfbuses,loc,elemz,col,locs,Zf);
    for n=1:nfbuses
        p=input('number of bus to be faulted');
        Vf=input('fault bus voltage');
        If=Vf/(Zbus(p,p)+Zf);
        mprintf("Bus no.         Fault current\n");
        mprintf("%2i\",p);
        mprintf("         %15.4f\",real(If));
        mprintf("         %15.4f\n",imag(If));
        for k=1:3
            V(k)=Vf-Zbus(k,p)*If;
             mprintf("Bus no.         Bus Voltage\n");
        mprintf("%2i\",k);
        mprintf("         %15.4f\",real(V(k)));
        mprintf("         %15.4f\n",imag(V(k)));
    end
    kk=1;
    for k=1:locs-1
        add=loc(k+1)-loc(k);
        for m=1:add
            j=col(kk);
            I(k,j)=(V(k)-V(j))/elemz(kk);
            kk=kk+1;
            mprintf("Bus no.       Bus No.     Current\n");
        mprintf("%2i\",k);
         mprintf("......%10i\",j);
        mprintf(" %15.4f\",real(I(k,j)));
        mprintf(" %15.4f\n",imag(I(k,j)));
    end
    end
            
            
        
    end
endfunction
nfbuses=2;
loc=[1 3 4];
elemz=[.2 .3 .25]*%i;
col=[2 3 3];
locs=3;
Zf=%i*.2;
Zbus=[.0776 .0448 .0597;.0448 .1104 .0806;.0597 .0806 .2075]*%i;

fault3faze (Zbus,nfbuses,loc,elemz,col,locs,Zf);

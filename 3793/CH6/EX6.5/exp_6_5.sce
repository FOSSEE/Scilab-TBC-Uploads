clear;
clc;

function[Ybus,I]=fbsub(Ybus,nbus,I);
    for k=1:nbus;
        if k==1;
            for j=2:nbus;
                Ybus(k,j)=Ybus(k,j)/Ybus(k,k);
    end
else
    for j=2:nbus;
        if j<=k;
            for m=1:j-1;
                Ybus(k,j)=Ybus(k,j)-Ybus(k,m)*Ybus(m,j);
                
    end
else
    for m=1:k-1;
        Ybus(k,j)=Ybus(k,j)-Ybus(k,m)*Ybus(m,j);
        
    end
    Ybus(k,j)=Ybus(k,j)/Ybus(k,k);
end
end
end
end
for k=1:nbus;
    if k==1;
        I(k)=I(k)/Ybus(k,k);
    else
        for j=1:k-1;
            I(k)=I(k)-Ybus(k,j)*I(j);
end
I(k)=I(k)/Ybus(k,k);
end
end
for k=nbus:-1:1;
    if k==nbus;
        disp('node voltages');
        disp(Ybus);
        
       
    else
        for j=nbus:-1:k+1;
            I(k)=I(k)-Ybus(k,j)*I(j);
end
end
end
endfunction
Ybus=[4 3 6;2 8 5;1 5 9];
nbus=3;
I=[1;1;1];
[Ybus,I]=fbsub(Ybus,nbus,I);
V1=1/Ybus(1,1);
V2=(1/Ybus(2,2))*(1-2*V1);
V3=(1/Ybus(3,3))*(1-1*V1-4.25*V2);
VV3=V3;
VV2=(V2-Ybus(2,3)*V3);
VV1=(V1-Ybus(1,2)*VV2-Ybus(1,3)*V3);
V=[VV1 ; VV2 ;VV3]
disp("V is");
disp(V);

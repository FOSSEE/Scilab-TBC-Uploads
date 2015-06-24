clc
disp("the soln of eg 3.3-->Flash Calc. using Raoults Law")
psat(1)=195.75,psat(2)=97.84,psat(3)=50.32            //given data
z(1)=.3,z(2)=.3,z(3)=.4
bpp=z(1)*psat(1)+z(2)*psat(2)+z(3)*psat(3)            //Bubble point pressure
dpp=1/(z(1)/psat(1)+z(2)/psat(2)+z(3)/psat(3))        //dew point pressure
disp(dpp,bpp,"the bubble point pressure and dew point pressure respectively are");
P=100,v=1, vnew=1, e=1,y2=0, der=0                //given pressure is between BPP & DPP
for i=1:3 k(i)=psat(i)/P
end
while e>1e-6 do v=vnew,for i=1:3,
        t1=(1-v+v*k(i)),y2=y2+z(i)*(k(i)-1)/t1,
        der=der-z(i)*(k(i)-1)^2/t1^2,
        end
    vnew=v-y2/der,e=abs(vnew-v),
    end 
    for i=1:3, x(i)=z(i)/(1-v+v*k(i)), y(i)=x(i)*k(i) 
    end
    disp(x(1),"mol frctn of acetone in liq. phase is");
    disp(y(1),"mol frctn of acetone in vapour phase is");
    disp(x(2),"mol frctn of acetonitrile in liq. phase is");
    disp(y(2),"mol frctn of acetonitrile in vapour. phase is");
    disp(x(3),"mol frctn of nitromethane in liq. phase is");
    disp(y(3),"mol frctn of nitromethane in vapour phase is");
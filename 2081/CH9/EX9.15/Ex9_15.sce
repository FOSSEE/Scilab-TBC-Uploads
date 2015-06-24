Bc1=30*10^3;cimin1=18
Bc2=25*10^3;cimin2=14
Bc3=12.5*10^3;cimin3=12
Bc4=6.25*10^3;cimin4=9
Y=4//path propogation constant
BcI=6.25*10^3
cieq1=cimin1+20*log10(Bc1/BcI)
cieq2=cimin2+20*log10(Bc2/BcI)
cieq3=cimin3+20*log10(Bc3/BcI)
cieq4=cimin4+20*log10(Bc4/BcI)
disp(cieq1,'(C/I)eq in dB for system I')
disp(cieq2,'(C/I)eq in dB for system II')
disp(cieq3,'(C/I)eq in dB for system III')
disp(cieq4,'(C/I)eq in dB for system IV')


if cieq1<cieq2 then
    if cieq1<cieq3  then
        if cieq1<cieq4 then
            disp(,'System I offers the best capacity')
        end
    end
elseif cieq2<cieq3 then
    if cieq2<cieq4 then
        if cieq2<cieq1 then
            disp(,'System II offers the best capacity')
        end
    end elseif cieq3<cieq4 then
    if cieq3<cieq1 then
        if cieq3<cieq2 then
            disp(,'System II offers the best capacity')
        end 
        end 
            
        elseif cieq4<cieq3  then
            if cieq4<cieq1 then
                if cieq4<cieq2 then
                    disp(,'System IV offers the best capacity')
                end
            end

end

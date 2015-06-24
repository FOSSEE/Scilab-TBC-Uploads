//pagenumber 32 example 10
clear
resist=0.12;//ohm metre
q=1.6*10^-19;
concn1=((1/resist)/(0.048*q));//concentration of hole
concne=((1.5*10^16)^(2))/concn1;//concentration of electron
disp("concentration of hole   =   "+string((concn1))+"per cubic centimetre");
disp("concentration of electron   =   "+string((concne))+"per cubic centimetre");




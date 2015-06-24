clear
clc

data=[ 1 2 .2+%i*.8 %i*.02
2 3 .3+%i*.9 %i*.03
2 4 .25+%i*1 %i*.04
3 4 .2+%i*.8 %i*.02
1 3 .1+%i*.4 %i*.01
]

n=4
e=5
Y=zeros(n,n)

for i=1:e
    ynew = 1/(data(i,3))
    y0=data(i,4)
    n1=real(data(i,1))
    n2=real(data(i,2))
    if(n1==0)
        Y(n2,n2)=Y(n2,n2)+ynew+y0
    else
        Y(n1,n1)= Y(n1,n1)+ynew+y0
        Y(n1,n2)= Y(n1,n2)-ynew
        Y(n2,n1)= Y(n2,n1)-ynew
        Y(n2,n2)= Y(n2,n2)+ynew+y0
    end
end

disp(fix(Y*1e3)/1e3)

clear
clc

S=50
data=[.05 20
.08 50
.06 30
.08 50
.04 30
.05 40
.05 50
.05 40
]
for(i=1:8)
    X(i)=round(data(i,1) * S/data(i,2)*10000)/10000
end

X1=round((((X(2)*X(8))+(X(2)*X(7))+(X(7)*X(8)))/X(2))*1000)/1000
X2=round((((X(2)*X(8))+(X(2)*X(7))+(X(7)*X(8)))/X(7))*1000)/1000
X3=round((((X(2)*X(8))+(X(2)*X(7))+(X(7)*X(8)))/X(8))*1000)/1000
X4=round((((1/X(1)) + (1/X2))^-1)*1000)/1000
X5=round((((1/X(4)) + (1/X3))^-1)*1000)/1000
X6=round((X4*X5/(X4+X5+X1))*1000)/1000
X7=round((X4*X1/(X4+X5+X1))*1000)/1000
X8=round((X1*X5/(X4+X5+X1))*1000)/1000
X9=round((X7+X(5))*1000)/1000
X10=round((X8+X(6))*1000)/1000
X11=round((((1/X10) + (1/X9))^-1)*1000)/1000
X12=round((X11+X6)*1000)/1000
X13=((1/X12) + (1/X(3)))^-1
MVA=S/X13
//Mismatch is due to error in calculation in the textbook
mprintf("Fault MVA=%.2f MVA",MVA)
disp("Mismatch is due to error in calculation in the textbook")

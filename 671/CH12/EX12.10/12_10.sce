
R2=0.5
X2=5
Tm_by_Tfl=3.5

Ts_by_Tfl=R2*Tm_by_Tfl*2*X2/(R2^2+X2^2)
disp(Ts_by_Tfl)

Ts_by_Tfl2=Ts_by_Tfl/3
disp(Ts_by_Tfl2)

Ts_by_Tfl3=0.7*0.7*Ts_by_Tfl        //calculation mistake in the book at this point
disp(Ts_by_Tfl3)

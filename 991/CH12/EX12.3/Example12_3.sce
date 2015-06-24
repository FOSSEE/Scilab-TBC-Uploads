//Example 12.3.
clc
format(6)
disp("(i) Series-fed load")
eta=(25*14)/15 //in percentage
disp(eta,"Overall efficiency,  eta(in percentage) = 25(Vmax-Vmin / Vmax) =")
disp("(ii) Transformer-coupled load")
eta=50*(14/16) //in percentage
disp(eta,"Overall efficiency,  eta(in percentage) = 50*(Vmax-Vmin / Vmax+Vmin) =")
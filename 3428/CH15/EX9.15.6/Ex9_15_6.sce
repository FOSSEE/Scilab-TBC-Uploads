//Section-9,Example-2,Page no.-E.9
//To find K_eq for the given reaction.
clc;
E0_Ag=0.80
E0_Cu=0.34
E0=E0_Ag-E0_Cu                  //E0_cell in volt
n=2
F=96500
R=8.314
T=298
K=(n*F*E0)/(R*T)
//K_eq=antilog(K)
K_eq=%e^K
disp(K_eq,'K_eq for the given reaction')
//Answer in the book is wrong.



